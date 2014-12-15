function google_mail(domain, dkim)
  mx(domain, "aspmx.l.google.com", 1)
  mx(domain, "alt1.aspmx.l.google.com", 5)
  mx(domain, "alt2.aspmx.l.google.com", 5)
  mx(domain, "alt3.aspmx.l.google.com", 10)
  mx(domain, "alt4.aspmx.l.google.com", 10)

  txt(domain, "v=spf1 include:_spf.google.com ~all")
  txt("mail._domainkey", "v=DKIM1; k=rsa; p=" .. dkim)
end
