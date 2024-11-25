# Google Dorks for Bug Bounty

Uma lista de Google Dorks para Bug Bounty, Aplicações Web, Segurança e Pentesting

---

### Pesquisa de domínio amplo com pesquisa negativa

```
site:example.com -www -shop -share -ir -mfa
```

### Extensão PHP com parâmetros

```
site:example.com ext:php inurl:?
```

### API Endpoints

```
site:example[.]com inurl:api | site:*/rest | site:*/v1 | site:*/v2 | site:*/v3
```

### Juicy Extensions

```
site:"example[.]com" ext:log | ext:txt | ext:conf | ext:cnf | ext:ini | ext:env | ext:sh | ext:bak | ext:backup | ext:swp | ext:old | ext:~ | ext:git | ext:svn | ext:htpasswd | ext:htaccess | ext:json
```

### Alta % inurl palavras-chave

```
inurl:conf | inurl:env | inurl:cgi | inurl:bin | inurl:etc | inurl:root | inurl:sql | inurl:backup | inurl:admin | inurl:php site:example[.]com
```

### Erros do servidor

```
inurl:"error" | intitle:"exception" | intitle:"failure" | intitle:"server at" | inurl:exception | "database error" | "SQL syntax" | "undefined index" | "unhandled exception" | "stack trace" site:example[.]com
```

### Parâmetros propensos a XSS

```
inurl:q= | inurl:s= | inurl:search= | inurl:query= | inurl:keyword= | inurl:lang= inurl:& site:example.com
```

### Parâmetros propensos a Open Redirect

```
inurl:url= | inurl:return= | inurl:next= | inurl:redirect= | inurl:redir= | inurl:ret= | inurl:r2= | inurl:page= inurl:& inurl:http site:example.com
```

### Parâmetros propensos a SQLi

```
inurl:id= | inurl:pid= | inurl:category= | inurl:cat= | inurl:action= | inurl:sid= | inurl:dir= inurl:& site:example.com
```

### Parâmetros propensos a SSRF

```
inurl:http | inurl:url= | inurl:path= | inurl:dest= | inurl:html= | inurl:data= | inurl:domain=  | inurl:page= inurl:& site:example.com
```

### Parâmetros propensos a LFI

```
inurl:include | inurl:dir | inurl:detail= | inurl:file= | inurl:folder= | inurl:inc= | inurl:locate= | inurl:doc= | inurl:conf= inurl:& site:example.com
```

### Parâmetros propensos a RCE

```
inurl:cmd | inurl:exec= | inurl:query= | inurl:code= | inurl:do= | inurl:run= | inurl:read=  | inurl:ping= inurl:& site:example.com
```

### File upload endpoints

```
site:example.com ”choose file”
```

### API Docs

```
inurl:apidocs | inurl:api-docs | inurl:swagger | inurl:api-explorer site:"example[.]com"
```

### Login Pages

```
inurl:login | inurl:signin | intitle:login | intitle:signin | inurl:secure site:example[.]com
```

### Test Environments

```
inurl:test | inurl:env | inurl:dev | inurl:staging | inurl:sandbox | inurl:debug | inurl:temp | inurl:internal | inurl:demo site:example.com
```

### Documentos sensíveis

```
site:example.com ext:txt | ext:pdf | ext:xml | ext:xls | ext:xlsx | ext:ppt | ext:pptx | ext:doc | ext:docx
intext:“confidential” | intext:“Not for Public Release” | intext:”internal use only” | intext:“do not distribute”
```

### Parâmetros Sensíveis

```
inurl:email= | inurl:phone= | inurl:password= | inurl:secret= inurl:& site:example[.]com
```

### Adobe Experience Manager (AEM)

```
inurl:/content/usergenerated | inurl:/content/dam | inurl:/jcr:content | inurl:/libs/granite | inurl:/etc/clientlibs | inurl:/content/geometrixx | inurl:/bin/wcm | inurl:/crx/de site:example[.]com
```

### XSS divulgado e redirecionamentos abertos

```
site:openbugbounty.org inurl:reports intext:"example.com"
```

### Google Groups

```
site:groups.google.com "example.com"
```

### Vazamento de Código

```
site:pastebin.com "example.com"
```

```
site:jsfiddle.net "example.com"
```

```
site:codebeautify.org "example.com"
```

```
site:codepen.io "example.com"
```

### Armazenamento em Nuvem

```
site:s3.amazonaws.com "example.com"
```

```
site:blob.core.windows.net "example.com"
```

```
site:googleapis.com "example.com"
```

```
site:drive.google.com "example.com"
```

```
site:dev.azure.com "example[.]com"
```

```
site:onedrive.live.com "example[.]com"
```

```
site:digitaloceanspaces.com "example[.]com"
```

```
site:sharepoint.com "example[.]com"
```

```
site:s3-external-1.amazonaws.com "example[.]com"
```

```
site:s3.dualstack.us-east-1.amazonaws.com "example[.]com"
```

```
site:dropbox.com/s "example[.]com"
```

```
site:box.com/s "example[.]com"
```

```
site:docs.google.com inurl:"/d/" "example[.]com"
```

### JFrog Artifactory

```
site:jfrog.io "example[.]com"
```

### Firebase

```
site:firebaseio.com "example[.]com"
```

---

