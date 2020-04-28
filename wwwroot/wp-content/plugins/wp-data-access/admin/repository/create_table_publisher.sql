CREATE TABLE {wp_prefix}wpda_publisher{wpda_postfix} (
  pub_id                        mediumint(9)  NOT NULL AUTO_INCREMENT,
  pub_name                      varchar(100)  NOT NULL,
  pub_schema_name               varchar(64)   NOT NULL DEFAULT '',
  pub_table_name                varchar(64)   NOT NULL,
  pub_column_names              varchar(4096) DEFAULT '*',
  pub_responsive                enum('Yes', 'No'),
  pub_responsive_popup_title    varchar(50),
  pub_responsive_cols           int unsigned,
  pub_responsive_type           enum('Modal', 'Collapsed', 'Expanded'),
  pub_responsive_icon           enum('Yes', 'No'),
  pub_format                    text,
  pub_default_where             varchar(2000) DEFAULT '',
  pub_default_orderby           varchar(100)  DEFAULT '',
  pub_table_options_searching   char(3)       DEFAULT 'on',
  pub_table_options_ordering    char(3)       DEFAULT 'on',
  pub_table_options_paging      char(3)       DEFAULT 'on',
  pub_table_options_advanced    text,
  PRIMARY KEY (pub_id),
  UNIQUE KEY (pub_name)
);