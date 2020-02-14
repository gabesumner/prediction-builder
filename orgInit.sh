sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix admin -o prediction.demo
sfdx force:source:push
sfdx force:user:permset:assign -n PredictionBuilder
sfdx shane:data:tree:import -p data/plan.json -d data/
sfdx force:user:password:generate
sfdx force:org:open