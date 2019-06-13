node{

	stage('Clone repository') {
		checkout scm
	}

    stage('Deploy to Cluster01') {
      sh """
      sudo /usr/bin/sh ./cluster01/cluster01-deploy.sh
      """
    }

    stage('Deploy to Cluster02') {
      sh """
      sudo /usr/bin/sh ./cluster02/cluster02-deploy.sh
      """
    }
    stage('Push F5 config using AS3') {
      sh """
      curl -sku admin:f5devops -H "Content-Type: application/json" -vX POST https://172.16.81.11/mgmt/shared/appsvcs/declare -d @f5/adc.json
      """
    }

}
