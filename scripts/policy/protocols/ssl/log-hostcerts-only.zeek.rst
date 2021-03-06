:tocdepth: 3

policy/protocols/ssl/log-hostcerts-only.zeek
============================================
.. zeek:namespace:: X509

When this script is loaded, only the host certificates (client and server)
will be logged to x509.log. Logging of all other certificates will be suppressed.

:Namespace: X509
:Imports: :doc:`base/files/x509 </scripts/base/files/x509/index>`, :doc:`base/protocols/ssl </scripts/base/protocols/ssl/index>`

Summary
~~~~~~~
Redefinitions
#############
============================================================= =================================================================================
:zeek:type:`X509::Info`: :zeek:type:`record`                  
                                                              
                                                              :New Fields: :zeek:type:`X509::Info`
                                                              
                                                                logcert: :zeek:type:`bool` :zeek:attr:`&default` = ``T`` :zeek:attr:`&optional`
                                                                  Logging of certificate is suppressed if set to F
:zeek:type:`fa_file`: :zeek:type:`record` :zeek:attr:`&redef` 
                                                              
                                                              :New Fields: :zeek:type:`fa_file`
                                                              
                                                                logcert: :zeek:type:`bool` :zeek:attr:`&default` = ``T`` :zeek:attr:`&optional`
============================================================= =================================================================================


Detailed Interface
~~~~~~~~~~~~~~~~~~

