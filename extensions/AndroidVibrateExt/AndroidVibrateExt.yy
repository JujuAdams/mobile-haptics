{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "AndroidVibrateExt",
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.0.1",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2023-01-30T13:42:17.1202233+00:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": true,
  "html5Props": false,
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"AndroidVibrate.ext","origname":"","init":"","final":"","kind":4,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"AndroidVibrateIsSupported","externalName":"GetSupported","kind":4,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"AndroidVibrateWeak","externalName":"Weak","kind":4,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"AndroidVibrateStrong","externalName":"Strong","kind":4,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"AndroidVibrateDouble","externalName":"Double","kind":4,"help":"","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"AndroidVibrateTriple","externalName":"Triple","kind":4,"help":"","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"AndroidVibrateGetAmplitudeControl","externalName":"GetAmplitudeControl","kind":4,"help":"","hidden":false,"returnType":2,"argCount":0,"args":[],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":8,"usesRunnerInterface":false,"order":[],},
  ],
  "HTML5CodeInjection": "",
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "HapticsAndroid",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [
    "android.permission.VIBRATE",
  ],
  "copyToTargets": 8,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "mobile haptics",
    "path": "mobile haptics.yyp",
  },
}