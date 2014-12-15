function yandex_mail(domain, dkim)
  mx(domain, "mx.yandex.ru", 10)

  txt(domain, "v=spf1 include:_spf.yandex.net ~all")
  txt("mail._domainkey", "v=DKIM1; k=rsa; t=s; p=" .. dkim)
end
