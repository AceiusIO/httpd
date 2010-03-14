<?xml version='1.0' encoding='KOI8-R' ?>
<!DOCTYPE manualpage SYSTEM "./style/manualpage.dtd">
<?xml-stylesheet type="text/xsl" href="./style/manual.ru.xsl"?>
<!-- English Revision: 96910:922642 (outdated) -->

<!--
 Licensed to the Apache Software Foundation (ASF) under one or more
 contributor license agreements.  See the NOTICE file distributed with
 this work for additional information regarding copyright ownership.
 The ASF licenses this file to You under the Apache License, Version 2.0
 (the "License"); you may not use this file except in compliance with
 the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->

<!--***************************************************-->
<!-- Translator: Ilia Soldis (rkai@tversu.ru)          -->
<!-- Reviewers:                                        -->
<!--             Ivan Shvedov (ivan@tversu.ru)         -->
<!--             Arthur Reznikov (art@altair.tversu.ru)-->
<!--***************************************************-->

<manualpage metafile="new_features_2_0.xml.meta">

<title>����� ����� ������������ � Apache 2.0</title>

<summary>
  <p>���� �������� ��������� �������� �������� ����� �������� 1.3 � 2.0 HTTP ������� Apache</p>
</summary>

<seealso><a href="upgrading.html">������� �� ������ 1.3 � ������ 2.0</a></seealso>

  <section id="core">
    <title>��������� � ���� �������</title>

    <dl>
      <dt>��������������� � UNIX</dt>

      <dd>�� UNIX ��������, ������� ������������ ������ (����) ��������� POSIX,
      Apache ������ ����� ����������� � ��������� ��������������� -
      ������������� ������. ��� ������������ �������������
      ������� ��� ������, �� �� ��� ���� �������� ����������������.</dd>

      <dt>����� ������� ������</dt>

      <dd>������� ������ ���� ��������� ��������, � ������ ������������ �� autoconf � libtool.
      ��� ������ ������� ���������������� Apache ����� ������� �� �������� ������� � ������ �����������
      ���������.</dd>

      <dt>��������� ��������� ����������</dt>

      <dd>Apache ������ ����� ����������� ��������������,
      ��������� ����������� ��������� ���������.
      ������ <module>mod_echo</module> ��� ������� � ��������
      ������� �����.</dd>

      <dt>���������� ��������� �������� �� UNIX
      ��������</dt>

      <dd>Apache 2.0 ���� �������� ������� � ��������
      �� �������� �� UNIX ����������, ����� ���: BeOS,
      OS/2 � Windows. � ��������� ����� �����������
      ��� ������ ���������<a
      href="mpm.html"> ������-���������� �������</a> (MPMs) �
      ���������� Apache Portable Runtime (APR), ��� ���������
      ������ �������������� � ������� �� ����������� API, ���
      ����������� �������� �������� �������� ����������� ����������
      ��-�� �������� ���������� ������ POSIX - ����������� �����.</dd>

      <dt>����� API ��� Apache</dt>

      <dd>API ��� ��������� ������� ����������� ��������� � ������ 2.0
      ������ �� ������� ������ 1.3, ��������� � �������� ����������
      ������� � �� ������������, ������ ���������. � ������ 2.0
      ������ �� �������� ����� �������� �������������, � ������
      ������� ���������� ������� ������������ ����������� �����������
      ����������� ������� (hooks), ������ ��������� ������� ����������
      ����� ������. ����� ���� ��������� ����� �������, �������
      ������������� �������������� ����������� ������������� �������,
      �������� �� ������������� �������� ����� - ���� ��������� � ����
      �������.</dd>

      <dt>��������� ��������� IPv6</dt>

      <dd>�� ��������, ��� �������� IPv6 ��������������
      ������� ����������� Apache Portable Runtime, Apache
      �� ��������� �������� ����������� ������� IPv6 ������
      (sockets). � ������� � ����� ��������� <directive
      module="mpm_common">Listen</directive>, <directive module="core"
      >NameVirtualHost</directive> � <directive module="core"
      >VirtualHost</directive> ����� �������� � ��������� ��������,
      ��������� � ������� IPv6 (�.�. �������� "Listen [2001:db8::1]:8080").</dd>

      <dt>������������� ��������</dt>

      <dd>������ Apache ������ ����� ���� �������� ��� �������,
      �������������� ������ ������, ������� �������� ��� ������
      �� �������. ��� ���������, � �������, ������, ����������
      ����������� ������ CGI-�������, ���� ������������� SSI
      �������� INCLUDES, ��������������� �������
      <module>mod_include</module>. ������ <module>mod_ext_filter</module>
      ��������� ������� ���������� ��������� ���� �������� ����� ��� ��
      ��� � CGI ���������� ����������� ����������� � ��������
      ������������ (handlers).</dd>

      <dt>��������� �� ������� �� ������ ������</dt>

      <dd>��������� �� �������, ���������� ��������, ������
      ������������ �� ���������� ������ � ���������� SSI
      ����������. ��� ����� ���� ����� ���������������
      ��������������� ��� ���� �����.</dd>

      <dt>���������� ������������</dt>

      <dd>������ ���������� ��������� ���� ��������. ��������
      ��������� � ����� Port � BindAddress ���� ������;
      ��� �������� � IP ������ ������������ ������ ���������
      <directive module="mpm_common">Listen</directive>; ���������
      <directive module="core">ServerName</directive> ���������� ��� ������� � ����� �����
      ������ ������ ��� ��������������� � ������ � ������������ �������.</dd>

      <dt>��������� ������� Windows NT</dt>

      <dd>Apache 2.0 �� Windows NT ������ ���������� ��������� utf-8
      ��� ������ � ������� ������. ��� ��������� ������������
      ����������� �������� �������, ���������� � ������� Unicode,
      ��� ������������� ��������� �������� �������������� ��� ���� NT-
      ������, ������� Windows 2000 � Windows XP.
      <em>��� �� ���������������� �� ����� ������������ �������, ���
      Windows 95, 98 ��� ME, ������� ��� ��������� � �������� �������
      ���������� ��������� �������� ������� ��������.</em></dd>

      <dt>����� ���������� ��� ������ � ����������� ����������</dt>

      <dd>� ������ Apache 2.0 ���� �������� <a href="http://www.pcre.org/">
      ���������� ��� ������ � Perl-������������ ����������� ����������</a> (PCRE).
      ��� ���������� ��������� ������ ���������� ����� ������ ��������� Perl 5.</dd>

    </dl>
  </section>

  <section id="module">
    <title>��������� � ������� �������</title>

    <dl>
      <dt><module>mod_ssl</module></dt>

      <dd>����� ������ � Apache 2.0. ���� ������ �������� �����������
      � ���������� ���������� SSL/TLS, ���������������� OpenSSL.</dd>

      <dt><module>mod_dav</module></dt>

      <dd>����� ������ � Apache 2.0. ���� ������ �������� ������������
      Distributed Authoring and Versioning (DAV), ����������� ���������
      ���������� ����� ����������� ������������ ��������� HTTP.</dd>

      <dt><module>mod_deflate</module></dt>

      <dd>����� ������ � Apache 2.0. ���� ������ ��������� ���������, ��������������
      ������ ����������, ����������� ������ � ������ ����, ��� ��������� �������� ��
      ����.</dd>

      <dt><module>mod_auth_ldap</module></dt>

      <dd>����� ������ � Apache 2.0.41. ���� ������ ��������� ������������ ���� ������ LDAP
      ��� �������� ���� � ������� �������������, ����������� ��� �������������� �� ������
      Basic. ������������� ��� ������ <module>mod_ldap</module> ������������ �����������
      �������� �������� ����������� (connection pools) � ����������� �����������.</dd>

      <dt><module>mod_auth_digest</module></dt>

      <dd>�������� �������������� ��������� ����������� ������
      ����������, ��������� ������������� ����� ������� ������ (����������
      ������).</dd>

      <dt><module>mod_charset_lite</module></dt>

      <dd>����� ������ � Apache 2.0. ���� ����������������� ������ ���������
      ������������ ������� �� ������ ������ �������� (character set) � ������ � �� �����
      ��������� � ������.</dd>

      <dt><module>mod_file_cache</module></dt>

      <dd>����� ������ � Apache 2.0. ���� ������ �������� � ����
      ���������������� ������ mod_mmap_static �� Apache 1.3
      ���� ����� ����������� �����������.</dd>

      <dt><module>mod_headers</module></dt>

      <dd>���� ������ ���� ����� ������ � Apache 2.0. �� ���������
      �������������� ��������� ��������, ������������ �������
      <module>mod_proxy</module>, � ����� �������� � ����� ������� ��������� �
      ����������� �� ��������� �������.</dd>

      <dt><module>mod_proxy</module></dt>

      <dd>������ ������ ��� ��������� ���������, � ������ ��������
      � ���� ������������ ����� ���������� �������������� � ����������
      ����� ��������, ����������� � HTTP/1.1 ������-����������. � �������
      � ����� ���� ������� ����� ������ <directive module="mod_proxy" type="section"
      >Proxy</directive>, ������� ����� ������������ � ���������������� ������, ���
      ������������ ����� ������� (� ����� ������� ��� ���� �������) �������� ��� �������,
      ������������� proxy-����������. ������������� ������������ &lt;Directory "proxy:..."&gt;
      ����� �� ��������������. ������ ������ �������� �� ��������� ����������� ������,
      �������������� ��������� ���������. ��� ������ �������� � ���� proxy_connect, proxy_ftp
      � proxy_http.</dd>

      <dt><module>mod_negotiation</module></dt>

      <dd>��������� ����� ��������� <directive module="mod_negotiation"
      >ForceLanguagePriority</directive>, ��� ���� ����� ������ ������� �������
      NOT ACCEPTABLE ��� MULTIPLE CHOICES ������ ������������� ������������
      ������������ ��������. � ���������� � ����� ���������
      ���������� (negotiation) � MultiViews ���� �������� � ����������, ���
      ����������� ����� ����������������� ����������, � ����� ��������� �����������
      ��������� ����������������� ����������� ���������� � ����� ����� (type map).</dd>

      <dt><module>mod_autoindex</module></dt>

      <dd>�������� ����������������� ��������� ������ ����� ���������� � ����
      HTML-������. ��������� ����������� ����� ������ ����������, ������� ���������� �� ������� �
      ���������� � �������������� ������������� �������� (wildcard).</dd>

      <dt><module>mod_include</module></dt>

      <dd>������� ����� ���������, ������� ��������� �������� ��������� � ��������
      ���� SSI ���������, ���������� �� ���������, � ����� ������������� �����������
      ���������������� ������� ��������� �� ������� � ������� ���������������
      � ������� ���������������� �����, � �� � SSI ���������. ����������
      ��������� ���������� ��������� (������ �������������� �� ����������
      ���������� ��������� ����� Perl) ����� ���� �������� ��� ������ ����������
      $0 .. $9 ������ mod_include.</dd>

      <dt><module>mod_auth_dbm</module></dt>

      <dd>������ ������������ �������������� ���� DBM-�������� ��� ������ �����������
      ��������� <directive module="mod_auth_dbm">AuthDBMType</directive>.</dd>

    </dl>
  </section>
</manualpage>
