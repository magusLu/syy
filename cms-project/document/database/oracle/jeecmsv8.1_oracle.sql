CREATE SEQUENCE S_JC_ACQUISITION start with 2;

CREATE SEQUENCE S_JC_ACQUISITION_HISTORY;

CREATE SEQUENCE S_JC_ACQUISITION_TEMP;

CREATE SEQUENCE S_JC_ADVERTISING start with 2;

CREATE SEQUENCE S_JC_ADVERTISING_SPACE start with 2;

CREATE SEQUENCE S_JC_CHANNEL start with 94;

CREATE SEQUENCE S_JC_COMMENT start with 16;

CREATE SEQUENCE S_JC_CONTENT start with 142;

CREATE SEQUENCE S_JC_CONTENT_SHARE_CHECK;

CREATE SEQUENCE S_JC_CONTENT_TAG start with 718;

CREATE SEQUENCE S_JC_DEPARTMENT start with 2;

CREATE SEQUENCE S_JC_DICTIONARY start with 12;

CREATE SEQUENCE S_JC_FRIENDLINK start with 7;

CREATE SEQUENCE S_JC_FRIENDLINK_CTG start with 5;

CREATE SEQUENCE S_JC_GROUP start with 4;

CREATE SEQUENCE S_JC_GUESTBOOK start with 7;

CREATE SEQUENCE S_JC_GUESTBOOK_CTG start with 3;

CREATE SEQUENCE S_JC_JOB_APPLY start with 1;

CREATE SEQUENCE S_JC_KEYWORD start with 2;

CREATE SEQUENCE S_JC_LOG;

CREATE SEQUENCE S_JC_MESSAGE;

CREATE SEQUENCE S_JC_MODEL_ITEM start with 459;

CREATE SEQUENCE S_JC_RECEIVER_MESSAGE;

CREATE SEQUENCE S_JC_ROLE start with 3;

CREATE SEQUENCE S_JC_SENSITIVITY start with 2;

CREATE SEQUENCE S_JC_SITE  start with 2;

CREATE SEQUENCE S_JC_SITE_FLOW;

CREATE SEQUENCE S_JC_SITE_MODEL;

CREATE SEQUENCE S_JC_TASK  start with 4;

CREATE SEQUENCE S_JC_TOPIC  start with 4;

CREATE SEQUENCE S_JC_USER_SITE  start with 3;

CREATE SEQUENCE S_JC_VOTE_ITEM start with 64;

CREATE SEQUENCE S_JC_VOTE_RECORD start with 81;

CREATE SEQUENCE S_JC_VOTE_REPLY start with  151;

CREATE SEQUENCE S_JC_VOTE_SUBTOPIC start with 28;

CREATE SEQUENCE S_JC_VOTE_TOPIC  start with 12;

CREATE SEQUENCE S_JC_WORKFLOW start with 2;

CREATE SEQUENCE S_JC_WORKFLOW_EVENT;

CREATE SEQUENCE S_JC_WORKFLOW_EVENT_USER;

CREATE SEQUENCE S_JC_WORKFLOW_RECORD;

CREATE SEQUENCE S_JO_FTP;

CREATE SEQUENCE S_JO_USER start with 2;

/*==============================================================*/
/* Table: JC_ACQUISITION                                        */
/*==============================================================*/
CREATE TABLE JC_ACQUISITION  (
   ACQUISITION_ID       NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   TYPE_ID              NUMBER(11)                         NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   ACQ_NAME             VARCHAR2(50)                    NOT NULL,
   START_TIME           DATE,
   END_TIME             DATE,
   STATUS               NUMBER(11)                        DEFAULT 0 NOT NULL,
   CURR_NUM             NUMBER(11)                        DEFAULT 0 NOT NULL,
   CURR_ITEM            NUMBER(11)                        DEFAULT 0 NOT NULL,
   TOTAL_ITEM           NUMBER(11)                        DEFAULT 0 NOT NULL,
   PAUSE_TIME           NUMBER(11)                        DEFAULT 0 NOT NULL,
   PAGE_ENCODING        VARCHAR2(20)                   DEFAULT 'GBK' NOT NULL,
   PLAN_LIST            CLOB,
   DYNAMIC_ADDR         VARCHAR2(255),
   DYNAMIC_START        NUMBER(11),
   DYNAMIC_END          NUMBER(11),
   LINKSET_START        VARCHAR2(255),
   LINKSET_END          VARCHAR2(255),
   LINK_START           VARCHAR2(255),
   LINK_END             VARCHAR2(255),
   TITLE_START          VARCHAR2(255),
   TITLE_END            VARCHAR2(255),
   KEYWORDS_START       VARCHAR2(255),
   KEYWORDS_END         VARCHAR2(255),
   DESCRIPTION_START    VARCHAR2(255),
   DESCRIPTION_END      VARCHAR2(255),
   CONTENT_START        VARCHAR2(255),
   CONTENT_END          VARCHAR2(255),
   PAGINATION_START     VARCHAR2(255),
   PAGINATION_END       VARCHAR2(255),
   QUEUE                NUMBER(11)                      DEFAULT 0 NOT NULL,
   REPEAT_CHECK_TYPE    VARCHAR2(20),
   IMG_ACQU             NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONTENT_PREFIX       VARCHAR2(255),
   IMG_PREFIX           VARCHAR2(255),
   VIEW_START           VARCHAR2(255),
   VIEW_END             VARCHAR2(255),
   VIEW_ID_START        VARCHAR2(255),
   VIEW_ID_END          VARCHAR2(255),
   VIEW_LINK            VARCHAR2(255),
   RELEASETIME_START    VARCHAR2(255),
   RELEASETIME_END      VARCHAR2(255),
   AUTHOR_START         VARCHAR2(255),
   AUTHOR_END           VARCHAR2(255),
   ORIGIN_START         VARCHAR2(255),
   ORIGIN_END           VARCHAR2(255),
   RELEASETIME_FORMAT   VARCHAR2(255),
   CONSTRAINT PK_JC_ACQUISITION PRIMARY KEY (ACQUISITION_ID)
);

COMMENT ON TABLE JC_ACQUISITION IS
'CMS采集表;';

COMMENT ON COLUMN JC_ACQUISITION.ACQ_NAME IS
'采集名称';

COMMENT ON COLUMN JC_ACQUISITION.START_TIME IS
'开始时间';

COMMENT ON COLUMN JC_ACQUISITION.END_TIME IS
'停止时间';

COMMENT ON COLUMN JC_ACQUISITION.STATUS IS
'当前状态(0:静止;1:采集;2:暂停)';

COMMENT ON COLUMN JC_ACQUISITION.CURR_NUM IS
'当前号码';

COMMENT ON COLUMN JC_ACQUISITION.CURR_ITEM IS
'当前条数';

COMMENT ON COLUMN JC_ACQUISITION.TOTAL_ITEM IS
'每页总条数';

COMMENT ON COLUMN JC_ACQUISITION.PAUSE_TIME IS
'暂停时间(毫秒)';

COMMENT ON COLUMN JC_ACQUISITION.PAGE_ENCODING IS
'页面编码';

COMMENT ON COLUMN JC_ACQUISITION.PLAN_LIST IS
'采集列表';

COMMENT ON COLUMN JC_ACQUISITION.DYNAMIC_ADDR IS
'动态地址';

COMMENT ON COLUMN JC_ACQUISITION.DYNAMIC_START IS
'页码开始';

COMMENT ON COLUMN JC_ACQUISITION.DYNAMIC_END IS
'页码结束';

COMMENT ON COLUMN JC_ACQUISITION.LINKSET_START IS
'内容链接区开始';

COMMENT ON COLUMN JC_ACQUISITION.LINKSET_END IS
'内容链接区结束';

COMMENT ON COLUMN JC_ACQUISITION.LINK_START IS
'内容链接开始';

COMMENT ON COLUMN JC_ACQUISITION.LINK_END IS
'内容链接结束';

COMMENT ON COLUMN JC_ACQUISITION.TITLE_START IS
'标题开始';

COMMENT ON COLUMN JC_ACQUISITION.TITLE_END IS
'标题结束';

COMMENT ON COLUMN JC_ACQUISITION.KEYWORDS_START IS
'关键字开始';

COMMENT ON COLUMN JC_ACQUISITION.KEYWORDS_END IS
'关键字结束';

COMMENT ON COLUMN JC_ACQUISITION.DESCRIPTION_START IS
'描述开始';

COMMENT ON COLUMN JC_ACQUISITION.DESCRIPTION_END IS
'描述结束';

COMMENT ON COLUMN JC_ACQUISITION.CONTENT_START IS
'内容开始';

COMMENT ON COLUMN JC_ACQUISITION.CONTENT_END IS
'内容结束';

COMMENT ON COLUMN JC_ACQUISITION.PAGINATION_START IS
'内容分页开始';

COMMENT ON COLUMN JC_ACQUISITION.PAGINATION_END IS
'内容分页结束';

COMMENT ON COLUMN JC_ACQUISITION.QUEUE IS
'队列';

COMMENT ON COLUMN JC_ACQUISITION.REPEAT_CHECK_TYPE IS
'重复类型';

COMMENT ON COLUMN JC_ACQUISITION.IMG_ACQU IS
'是否采集图片';

COMMENT ON COLUMN JC_ACQUISITION.CONTENT_PREFIX IS
'内容地址补全url';

COMMENT ON COLUMN JC_ACQUISITION.IMG_PREFIX IS
'图片地址补全url';

COMMENT ON COLUMN JC_ACQUISITION.VIEW_START IS
'浏览量开始';

COMMENT ON COLUMN JC_ACQUISITION.VIEW_END IS
'浏览量结束';

COMMENT ON COLUMN JC_ACQUISITION.VIEW_ID_START IS
'id前缀';

COMMENT ON COLUMN JC_ACQUISITION.VIEW_ID_END IS
'id后缀';

COMMENT ON COLUMN JC_ACQUISITION.VIEW_LINK IS
'浏览量动态访问地址';

COMMENT ON COLUMN JC_ACQUISITION.RELEASETIME_START IS
'发布时间开始';

COMMENT ON COLUMN JC_ACQUISITION.RELEASETIME_END IS
'发布时间结束';

COMMENT ON COLUMN JC_ACQUISITION.AUTHOR_START IS
'作者开始';

COMMENT ON COLUMN JC_ACQUISITION.AUTHOR_END IS
'作者结束';

COMMENT ON COLUMN JC_ACQUISITION.ORIGIN_START IS
'来源开始';

COMMENT ON COLUMN JC_ACQUISITION.ORIGIN_END IS
'来源结束';

COMMENT ON COLUMN JC_ACQUISITION.RELEASETIME_FORMAT IS
'发布时间格式';

/*==============================================================*/
/* Table: JC_ACQUISITION_HISTORY                                */
/*==============================================================*/
CREATE TABLE JC_ACQUISITION_HISTORY  (
   HISTORY_ID           NUMBER(11)                       NOT NULL,
   CHANNEL_URL          VARCHAR2(255)                   NOT NULL,
   CONTENT_URL          VARCHAR2(255)                   NOT NULL,
   TITLE                VARCHAR2(255),
   DESCRIPTION          VARCHAR2(20)                    NOT NULL,
   ACQUISITION_ID       NUMBER(11),
   CONTENT_ID           NUMBER(11),
   CONSTRAINT PK_JC_ACQUISITION_HISTORY PRIMARY KEY (HISTORY_ID)
);

COMMENT ON TABLE JC_ACQUISITION_HISTORY IS
'采集历史记录表;';

COMMENT ON COLUMN JC_ACQUISITION_HISTORY.CHANNEL_URL IS
'栏目地址';

COMMENT ON COLUMN JC_ACQUISITION_HISTORY.CONTENT_URL IS
'内容地址';

COMMENT ON COLUMN JC_ACQUISITION_HISTORY.TITLE IS
'标题';

COMMENT ON COLUMN JC_ACQUISITION_HISTORY.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_ACQUISITION_HISTORY.ACQUISITION_ID IS
'采集源';

COMMENT ON COLUMN JC_ACQUISITION_HISTORY.CONTENT_ID IS
'内容';


/*==============================================================*/
/* Table: JC_ACQUISITION_TEMP                                   */
/*==============================================================*/
CREATE TABLE JC_ACQUISITION_TEMP  (
   TEMP_ID              NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11),
   CHANNEL_URL          VARCHAR2(255)                   NOT NULL,
   CONTENT_URL          VARCHAR2(255)                   NOT NULL,
   TITLE                VARCHAR2(255),
   PERCENT              NUMBER(11)                        DEFAULT 0 NOT NULL,
   DESCRIPTION          VARCHAR2(20)                    NOT NULL,
   SEQ                  NUMBER(11)                        DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_ACQUISITION_TEMP PRIMARY KEY (TEMP_ID)
);

COMMENT ON TABLE JC_ACQUISITION_TEMP IS
'采集进度临时表;';

COMMENT ON COLUMN JC_ACQUISITION_TEMP.CHANNEL_URL IS
'栏目地址';

COMMENT ON COLUMN JC_ACQUISITION_TEMP.CONTENT_URL IS
'内容地址';

COMMENT ON COLUMN JC_ACQUISITION_TEMP.TITLE IS
'标题';

COMMENT ON COLUMN JC_ACQUISITION_TEMP.PERCENT IS
'百分比';

COMMENT ON COLUMN JC_ACQUISITION_TEMP.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_ACQUISITION_TEMP.SEQ IS
'顺序';

/*==============================================================*/
/* Table: JC_ADVERTISING                                        */
/*==============================================================*/
CREATE TABLE JC_ADVERTISING  (
   ADVERTISING_ID       NUMBER(11)                       NOT NULL,
   ADSPACE_ID           NUMBER(11)                         NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   AD_NAME              VARCHAR2(100)                   NOT NULL,
   CATEGORY             VARCHAR2(50)                    NOT NULL,
   AD_CODE              CLOB,
   AD_WEIGHT            NUMBER(11)                        DEFAULT 1 NOT NULL,
   DISPLAY_COUNT        NUMBER(11)                        DEFAULT 0 NOT NULL,
   CLICK_COUNT          NUMBER(11)                        DEFAULT 0 NOT NULL,
   START_TIME           DATE,
   END_TIME             DATE,
   IS_ENABLED           CHAR(1)                        DEFAULT '1' NOT NULL,
   CONSTRAINT PK_JC_ADVERTISING PRIMARY KEY (ADVERTISING_ID)
);

COMMENT ON TABLE JC_ADVERTISING IS
'CMS广告表;';

COMMENT ON COLUMN JC_ADVERTISING.AD_NAME IS
'广告名称';

COMMENT ON COLUMN JC_ADVERTISING.CATEGORY IS
'广告类型';

COMMENT ON COLUMN JC_ADVERTISING.AD_CODE IS
'广告代码';

COMMENT ON COLUMN JC_ADVERTISING.AD_WEIGHT IS
'广告权重';

COMMENT ON COLUMN JC_ADVERTISING.DISPLAY_COUNT IS
'展现次数';

COMMENT ON COLUMN JC_ADVERTISING.CLICK_COUNT IS
'点击次数';

COMMENT ON COLUMN JC_ADVERTISING.START_TIME IS
'开始时间';

COMMENT ON COLUMN JC_ADVERTISING.END_TIME IS
'结束时间';

COMMENT ON COLUMN JC_ADVERTISING.IS_ENABLED IS
'是否启用';

/*==============================================================*/
/* Table: JC_ADVERTISING_ATTR                                   */
/*==============================================================*/
CREATE TABLE JC_ADVERTISING_ATTR  (
   ADVERTISING_ID       NUMBER(11)                         NOT NULL,
   ATTR_NAME            VARCHAR2(50)                    NOT NULL,
   ATTR_VALUE           VARCHAR2(255)
);

COMMENT ON TABLE JC_ADVERTISING_ATTR IS
'CMS广告属性表;';

COMMENT ON COLUMN JC_ADVERTISING_ATTR.ATTR_NAME IS
'名称';

COMMENT ON COLUMN JC_ADVERTISING_ATTR.ATTR_VALUE IS
'值';

/*==============================================================*/
/* Table: JC_ADVERTISING_SPACE                                  */
/*==============================================================*/
CREATE TABLE JC_ADVERTISING_SPACE  (
   ADSPACE_ID           NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   AD_NAME              VARCHAR2(100)                   NOT NULL,
   DESCRIPTION          VARCHAR2(255),
   IS_ENABLED           CHAR(1)                         NOT NULL,
   CONSTRAINT PK_JC_ADVERTISING_SPACE PRIMARY KEY (ADSPACE_ID)
);

COMMENT ON TABLE JC_ADVERTISING_SPACE IS
'CMS广告版位表;';

COMMENT ON COLUMN JC_ADVERTISING_SPACE.AD_NAME IS
'名称';

COMMENT ON COLUMN JC_ADVERTISING_SPACE.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_ADVERTISING_SPACE.IS_ENABLED IS
'是否启用';

/*==============================================================*/
/* Table: JC_CHANNEL                                            */
/*==============================================================*/
CREATE TABLE JC_CHANNEL  (
   CHANNEL_ID           NUMBER(11)                       NOT NULL,
   MODEL_ID             NUMBER(11)                         NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   PARENT_ID            NUMBER(11),
   CHANNEL_PATH         VARCHAR2(30),
   LFT                  NUMBER(11)                        DEFAULT 1 NOT NULL,
   RGT                  NUMBER(11)                        DEFAULT 2 NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   HAS_CONTENT          NUMBER(1)                       DEFAULT 1 NOT NULL,
   IS_DISPLAY           NUMBER(1)                       DEFAULT 1 NOT NULL,
   WORKFLOW_ID          NUMBER(11),
   CONSTRAINT PK_JC_CHANNEL PRIMARY KEY (CHANNEL_ID)
);

COMMENT ON TABLE JC_CHANNEL IS
'CMS栏目表;';

COMMENT ON COLUMN JC_CHANNEL.MODEL_ID IS
'模型ID';

COMMENT ON COLUMN JC_CHANNEL.SITE_ID IS
'站点ID';

COMMENT ON COLUMN JC_CHANNEL.PARENT_ID IS
'父栏目ID';

COMMENT ON COLUMN JC_CHANNEL.CHANNEL_PATH IS
'访问路径';

COMMENT ON COLUMN JC_CHANNEL.LFT IS
'树左边';

COMMENT ON COLUMN JC_CHANNEL.RGT IS
'树右边';

COMMENT ON COLUMN JC_CHANNEL.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_CHANNEL.HAS_CONTENT IS
'是否有内容';

COMMENT ON COLUMN JC_CHANNEL.IS_DISPLAY IS
'是否显示';

COMMENT ON COLUMN JC_CHANNEL.WORKFLOW_ID IS
'工作流id';

/*==============================================================*/
/* Table: JC_CHANNEL_ATTR                                       */
/*==============================================================*/
CREATE TABLE JC_CHANNEL_ATTR  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   ATTR_NAME            VARCHAR2(30)                    NOT NULL,
   ATTR_VALUE           VARCHAR2(255)
);

COMMENT ON TABLE JC_CHANNEL_ATTR IS
'CMS栏目扩展属性表;';

COMMENT ON COLUMN JC_CHANNEL_ATTR.ATTR_NAME IS
'名称';

COMMENT ON COLUMN JC_CHANNEL_ATTR.ATTR_VALUE IS
'值';

/*==============================================================*/
/* Table: JC_CHANNEL_DEPARTMENT                                 */
/*==============================================================*/
CREATE TABLE JC_CHANNEL_DEPARTMENT  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   DEPARTMENT_ID        NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_CHANNEL_DEPARTMENT PRIMARY KEY (CHANNEL_ID, DEPARTMENT_ID)
);

COMMENT ON TABLE JC_CHANNEL_DEPARTMENT IS
'CMS栏目部门关联表;';

/*==============================================================*/
/* Table: JC_CHANNEL_EXT                                        */
/*==============================================================*/
CREATE TABLE JC_CHANNEL_EXT  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   CHANNEL_NAME         VARCHAR2(100)                   NOT NULL,
   FINAL_STEP           NUMBER(1)                       DEFAULT 2,
   AFTER_CHECK          NUMBER(1),
   IS_STATIC_CHANNEL    CHAR(1)                        DEFAULT '0' NOT NULL,
   IS_STATIC_CONTENT    CHAR(1)                        DEFAULT '0' NOT NULL,
   IS_ACCESS_BY_DIR     CHAR(1)                        DEFAULT '1' NOT NULL,
   IS_LIST_CHILD        CHAR(1)                        DEFAULT '0' NOT NULL,
   PAGE_SIZE            NUMBER(11)                        DEFAULT 20 NOT NULL,
   CHANNEL_RULE         VARCHAR2(150),
   CONTENT_RULE         VARCHAR2(150),
   LINK                 VARCHAR2(255),
   TPL_CHANNEL          VARCHAR2(100),
   TPL_CONTENT          VARCHAR2(100),
   TITLE_IMG            VARCHAR2(100),
   CONTENT_IMG          VARCHAR2(100),
   HAS_TITLE_IMG        NUMBER(1)                       DEFAULT 0 NOT NULL,
   HAS_CONTENT_IMG      NUMBER(1)                       DEFAULT 0 NOT NULL,
   TITLE_IMG_WIDTH      NUMBER(11)                        DEFAULT 139 NOT NULL,
   TITLE_IMG_HEIGHT     NUMBER(11)                        DEFAULT 139 NOT NULL,
   CONTENT_IMG_WIDTH    NUMBER(11)                        DEFAULT 310 NOT NULL,
   CONTENT_IMG_HEIGHT   NUMBER(11)                        DEFAULT 310 NOT NULL,
   COMMENT_CONTROL      NUMBER(11)                        DEFAULT 0 NOT NULL,
   ALLOW_UPDOWN         NUMBER(1)                       DEFAULT 1 NOT NULL,
   IS_BLANK             NUMBER(1)                       DEFAULT 1 NOT NULL,
   TITLE                VARCHAR2(255),
   KEYWORDS             VARCHAR2(255),
   DESCRIPTION          VARCHAR2(255),
   CONSTRAINT PK_JC_CHANNEL_EXT PRIMARY KEY (CHANNEL_ID)
);

COMMENT ON TABLE JC_CHANNEL_EXT IS
'CMS栏目内容表;';

COMMENT ON COLUMN JC_CHANNEL_EXT.CHANNEL_NAME IS
'名称';

COMMENT ON COLUMN JC_CHANNEL_EXT.FINAL_STEP IS
'终审级别';

COMMENT ON COLUMN JC_CHANNEL_EXT.AFTER_CHECK IS
'审核后(1:不能修改删除;2:修改后退回;3:修改后不变)';

COMMENT ON COLUMN JC_CHANNEL_EXT.IS_STATIC_CHANNEL IS
'是否栏目静态化';

COMMENT ON COLUMN JC_CHANNEL_EXT.IS_STATIC_CONTENT IS
'是否内容静态化';

COMMENT ON COLUMN JC_CHANNEL_EXT.IS_ACCESS_BY_DIR IS
'是否使用目录访问';

COMMENT ON COLUMN JC_CHANNEL_EXT.IS_LIST_CHILD IS
'是否使用子栏目列表';

COMMENT ON COLUMN JC_CHANNEL_EXT.PAGE_SIZE IS
'每页多少条记录';

COMMENT ON COLUMN JC_CHANNEL_EXT.CHANNEL_RULE IS
'栏目页生成规则';

COMMENT ON COLUMN JC_CHANNEL_EXT.CONTENT_RULE IS
'内容页生成规则';

COMMENT ON COLUMN JC_CHANNEL_EXT.LINK IS
'外部链接';

COMMENT ON COLUMN JC_CHANNEL_EXT.TPL_CHANNEL IS
'栏目页模板';

COMMENT ON COLUMN JC_CHANNEL_EXT.TPL_CONTENT IS
'内容页模板';

COMMENT ON COLUMN JC_CHANNEL_EXT.TITLE_IMG IS
'缩略图';

COMMENT ON COLUMN JC_CHANNEL_EXT.CONTENT_IMG IS
'内容图';

COMMENT ON COLUMN JC_CHANNEL_EXT.HAS_TITLE_IMG IS
'内容是否有缩略图';

COMMENT ON COLUMN JC_CHANNEL_EXT.HAS_CONTENT_IMG IS
'内容是否有内容图';

COMMENT ON COLUMN JC_CHANNEL_EXT.TITLE_IMG_WIDTH IS
'内容标题图宽度';

COMMENT ON COLUMN JC_CHANNEL_EXT.TITLE_IMG_HEIGHT IS
'内容标题图高度';

COMMENT ON COLUMN JC_CHANNEL_EXT.CONTENT_IMG_WIDTH IS
'内容内容图宽度';

COMMENT ON COLUMN JC_CHANNEL_EXT.CONTENT_IMG_HEIGHT IS
'内容内容图高度';

COMMENT ON COLUMN JC_CHANNEL_EXT.COMMENT_CONTROL IS
'评论(0:匿名;1:会员;2:关闭)';

COMMENT ON COLUMN JC_CHANNEL_EXT.ALLOW_UPDOWN IS
'顶踩(true:开放;false:关闭)';

COMMENT ON COLUMN JC_CHANNEL_EXT.IS_BLANK IS
'是否新窗口打开';

COMMENT ON COLUMN JC_CHANNEL_EXT.TITLE IS
'TITLE';

COMMENT ON COLUMN JC_CHANNEL_EXT.KEYWORDS IS
'KEYWORDS';

COMMENT ON COLUMN JC_CHANNEL_EXT.DESCRIPTION IS
'DESCRIPTION';

/*==============================================================*/
/* Table: JC_CHANNEL_MODEL                                      */
/*==============================================================*/
CREATE TABLE JC_CHANNEL_MODEL  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   MODEL_ID             NUMBER(11)                         NOT NULL,
   TPL_CONTENT          VARCHAR2(100),
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   CONSTRAINT PK_JC_CHANNEL_MODEL PRIMARY KEY (CHANNEL_ID, PRIORITY)
);

COMMENT ON TABLE JC_CHANNEL_MODEL IS
'栏目可选内容模型表;';

COMMENT ON COLUMN JC_CHANNEL_MODEL.MODEL_ID IS
'模型id';

COMMENT ON COLUMN JC_CHANNEL_MODEL.TPL_CONTENT IS
'内容模板';

COMMENT ON COLUMN JC_CHANNEL_MODEL.PRIORITY IS
'排序';

/*==============================================================*/
/* Table: JC_CHANNEL_TXT                                        */
/*==============================================================*/
CREATE TABLE JC_CHANNEL_TXT  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   TXT                  CLOB,
   TXT1                 CLOB,
   TXT2                 CLOB,
   TXT3                 CLOB,
   CONSTRAINT PK_JC_CHANNEL_TXT PRIMARY KEY (CHANNEL_ID)
);

COMMENT ON TABLE JC_CHANNEL_TXT IS
'CMS栏目文本表;';

COMMENT ON COLUMN JC_CHANNEL_TXT.TXT IS
'栏目内容';

COMMENT ON COLUMN JC_CHANNEL_TXT.TXT1 IS
'扩展内容1';

COMMENT ON COLUMN JC_CHANNEL_TXT.TXT2 IS
'扩展内容2';

COMMENT ON COLUMN JC_CHANNEL_TXT.TXT3 IS
'扩展内容3';

/*==============================================================*/
/* Table: JC_CHANNEL_USER                                       */
/*==============================================================*/
CREATE TABLE JC_CHANNEL_USER  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_CHANNEL_USER PRIMARY KEY (CHANNEL_ID, USER_ID)
);

COMMENT ON TABLE JC_CHANNEL_USER IS
'CMS栏目用户关联表;';

/*==============================================================*/
/* Table: JC_CHNL_GROUP_CONTRI                                  */
/*==============================================================*/
CREATE TABLE JC_CHNL_GROUP_CONTRI  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   GROUP_ID             NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_CHNL_GROUP_CONTRI PRIMARY KEY (CHANNEL_ID, GROUP_ID)
);

COMMENT ON TABLE JC_CHNL_GROUP_CONTRI IS
'CMS栏目投稿会员组关联表;';

/*==============================================================*/
/* Table: JC_CHNL_GROUP_VIEW                                    */
/*==============================================================*/
CREATE TABLE JC_CHNL_GROUP_VIEW  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   GROUP_ID             NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_CHNL_GROUP_VIEW PRIMARY KEY (CHANNEL_ID, GROUP_ID)
);

COMMENT ON TABLE JC_CHNL_GROUP_VIEW IS
'CMS栏目浏览会员组关联表;';

/*==============================================================*/
/* Table: JC_COMMENT                                            */
/*==============================================================*/
CREATE TABLE JC_COMMENT  (
   COMMENT_ID           NUMBER(11)                       NOT NULL,
   COMMENT_USER_ID      NUMBER(11),
   REPLY_USER_ID        NUMBER(11),
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   CREATE_TIME          DATE                            NOT NULL,
   REPLY_TIME           DATE,
   UPS                  NUMBER(1)                       DEFAULT 0 NOT NULL,
   DOWNS                NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_RECOMMEND         NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_CHECKED           NUMBER(1)                       DEFAULT 0 NOT NULL,
   SCORE                NUMBER(11),
   CONSTRAINT PK_JC_COMMENT PRIMARY KEY (COMMENT_ID)
);

COMMENT ON TABLE JC_COMMENT IS
'CMS评论表;';

COMMENT ON COLUMN JC_COMMENT.COMMENT_USER_ID IS
'评论用户ID';

COMMENT ON COLUMN JC_COMMENT.REPLY_USER_ID IS
'回复用户ID';

COMMENT ON COLUMN JC_COMMENT.CONTENT_ID IS
'内容ID';

COMMENT ON COLUMN JC_COMMENT.SITE_ID IS
'站点ID';

COMMENT ON COLUMN JC_COMMENT.CREATE_TIME IS
'评论时间';

COMMENT ON COLUMN JC_COMMENT.REPLY_TIME IS
'回复时间';

COMMENT ON COLUMN JC_COMMENT.UPS IS
'支持数';

COMMENT ON COLUMN JC_COMMENT.DOWNS IS
'反对数';

COMMENT ON COLUMN JC_COMMENT.IS_RECOMMEND IS
'是否推荐';

COMMENT ON COLUMN JC_COMMENT.IS_CHECKED IS
'是否审核';

COMMENT ON COLUMN JC_COMMENT.SCORE IS
'评分';

/*==============================================================*/
/* Table: JC_COMMENT_EXT                                        */
/*==============================================================*/
CREATE TABLE JC_COMMENT_EXT  (
   COMMENT_ID           NUMBER(11)                         NOT NULL,
   IP                   VARCHAR2(50),
   TEXT                 CLOB,
   REPLY                CLOB
);

COMMENT ON TABLE JC_COMMENT_EXT IS
'CMS评论扩展表;';

COMMENT ON COLUMN JC_COMMENT_EXT.IP IS
'IP地址';

COMMENT ON COLUMN JC_COMMENT_EXT.TEXT IS
'评论内容';

COMMENT ON COLUMN JC_COMMENT_EXT.REPLY IS
'回复内容';

/*==============================================================*/
/* Table: JC_CONFIG                                             */
/*==============================================================*/
CREATE TABLE JC_CONFIG  (
   CONFIG_ID            NUMBER(11)                         NOT NULL,
   CONTEXT_PATH         VARCHAR2(20)                   DEFAULT '/jeecms',
   SERVLET_POINT        VARCHAR2(20),
   PORT                 NUMBER(11),
   DB_FILE_URI          VARCHAR2(50)                   DEFAULT '/dbfile.svl?n=' NOT NULL,
   IS_UPLOAD_TO_DB      NUMBER(1)                       DEFAULT 0 NOT NULL,
   DEF_IMG              VARCHAR2(255)                   DEFAULT '/jeecms/r/cms/www/default/no_picture.gif' NOT NULL,
   LOGIN_URL            VARCHAR2(255)                  DEFAULT 'login.jspx' NOT NULL,
   PROCESS_URL          VARCHAR2(255),
   MARK_ON              NUMBER(1)                       DEFAULT 1 NOT NULL,
   MARK_WIDTH           NUMBER(11)                        DEFAULT 120 NOT NULL,
   MARK_HEIGHT          NUMBER(11)                        DEFAULT 120 NOT NULL,
   MARK_IMAGE           VARCHAR2(100)                  DEFAULT '/r/cms/www/watermark.png',
   MARK_CONTENT         VARCHAR2(100)                  DEFAULT 'www.jeecms.com' NOT NULL,
   MARK_SIZE            NUMBER(11)                        DEFAULT 20 NOT NULL,
   MARK_COLOR           VARCHAR2(10)                   DEFAULT '#FF0000' NOT NULL,
   MARK_ALPHA           NUMBER(11)                        DEFAULT 50 NOT NULL,
   MARK_POSITION        NUMBER(11)                        DEFAULT 1 NOT NULL,
   MARK_OFFSET_X        NUMBER(11)                        DEFAULT 0 NOT NULL,
   MARK_OFFSET_Y        NUMBER(11)                        DEFAULT 0 NOT NULL,
   COUNT_CLEAR_TIME     DATE                            NOT NULL,
   COUNT_COPY_TIME      DATE                            NOT NULL,
   DOWNLOAD_CODE        VARCHAR2(32)                   DEFAULT 'JEECMS' NOT NULL,
   DOWNLOAD_TIME        NUMBER(11)                        DEFAULT 12 NOT NULL,
   EMAIL_HOST           VARCHAR2(50),
   EMAIL_ENCODING       VARCHAR2(20),
   EMAIL_USERNAME       VARCHAR2(100),
   EMAIL_PASSWORD       VARCHAR2(100),
   EMAIL_PERSONAL       VARCHAR2(100),
   EMAIL_VALIDATE       NUMBER(1)                       DEFAULT 0,
   OFFICE_HOME          VARCHAR2(255)                   NOT NULL,
   OFFICE_PORT          VARCHAR2(10)                   DEFAULT '8810' NOT NULL,
   SWFTOOLS_HOME        VARCHAR2(255)                   NOT NULL,
   CONSTRAINT PK_JC_CONFIG PRIMARY KEY (CONFIG_ID)
);

COMMENT ON TABLE JC_CONFIG IS
'CMS配置表;';

COMMENT ON COLUMN JC_CONFIG.CONTEXT_PATH IS
'部署路径';

COMMENT ON COLUMN JC_CONFIG.SERVLET_POINT IS
'Servlet挂载点';

COMMENT ON COLUMN JC_CONFIG.PORT IS
'端口';

COMMENT ON COLUMN JC_CONFIG.DB_FILE_URI IS
'数据库附件访问地址';

COMMENT ON COLUMN JC_CONFIG.IS_UPLOAD_TO_DB IS
'上传附件至数据库';

COMMENT ON COLUMN JC_CONFIG.DEF_IMG IS
'图片不存在时默认图片';

COMMENT ON COLUMN JC_CONFIG.LOGIN_URL IS
'登录地址';

COMMENT ON COLUMN JC_CONFIG.PROCESS_URL IS
'登录后处理地址';

COMMENT ON COLUMN JC_CONFIG.MARK_ON IS
'开启图片水印';

COMMENT ON COLUMN JC_CONFIG.MARK_WIDTH IS
'图片最小宽度';

COMMENT ON COLUMN JC_CONFIG.MARK_HEIGHT IS
'图片最小高度';

COMMENT ON COLUMN JC_CONFIG.MARK_IMAGE IS
'图片水印';

COMMENT ON COLUMN JC_CONFIG.MARK_CONTENT IS
'文字水印内容';

COMMENT ON COLUMN JC_CONFIG.MARK_SIZE IS
'文字水印大小';

COMMENT ON COLUMN JC_CONFIG.MARK_COLOR IS
'文字水印颜色';

COMMENT ON COLUMN JC_CONFIG.MARK_ALPHA IS
'水印透明度（0-100）';

COMMENT ON COLUMN JC_CONFIG.MARK_POSITION IS
'水印位置(0-5)';

COMMENT ON COLUMN JC_CONFIG.MARK_OFFSET_X IS
'x坐标偏移量';

COMMENT ON COLUMN JC_CONFIG.MARK_OFFSET_Y IS
'y坐标偏移量';

COMMENT ON COLUMN JC_CONFIG.COUNT_CLEAR_TIME IS
'计数器清除时间';

COMMENT ON COLUMN JC_CONFIG.COUNT_COPY_TIME IS
'计数器拷贝时间';

COMMENT ON COLUMN JC_CONFIG.DOWNLOAD_CODE IS
'下载防盗链md5混淆码';

COMMENT ON COLUMN JC_CONFIG.DOWNLOAD_TIME IS
'下载有效时间（小时）';

COMMENT ON COLUMN JC_CONFIG.EMAIL_HOST IS
'邮件发送服务器';

COMMENT ON COLUMN JC_CONFIG.EMAIL_ENCODING IS
'邮件发送编码';

COMMENT ON COLUMN JC_CONFIG.EMAIL_USERNAME IS
'邮箱用户名';

COMMENT ON COLUMN JC_CONFIG.EMAIL_PASSWORD IS
'邮箱密码';

COMMENT ON COLUMN JC_CONFIG.EMAIL_PERSONAL IS
'邮箱发件人';

COMMENT ON COLUMN JC_CONFIG.EMAIL_VALIDATE IS
'开启邮箱验证';

COMMENT ON COLUMN JC_CONFIG.OFFICE_HOME IS
'openoffice安装目录';

COMMENT ON COLUMN JC_CONFIG.OFFICE_PORT IS
'openoffice端口';

COMMENT ON COLUMN JC_CONFIG.SWFTOOLS_HOME IS
'swftoos安装目录';

/*==============================================================*/
/* Table: JC_CONFIG_ATTR                                        */
/*==============================================================*/
CREATE TABLE JC_CONFIG_ATTR  (
   CONFIG_ID            NUMBER(11)                         NOT NULL,
   ATTR_NAME            VARCHAR2(30)                    NOT NULL,
   ATTR_VALUE           VARCHAR2(255)
);

COMMENT ON TABLE JC_CONFIG_ATTR IS
'CMS配置属性表;';

COMMENT ON COLUMN JC_CONFIG_ATTR.ATTR_NAME IS
'名称';

COMMENT ON COLUMN JC_CONFIG_ATTR.ATTR_VALUE IS
'值';

/*==============================================================*/
/* Table: JC_CONTENT                                            */
/*==============================================================*/
CREATE TABLE JC_CONTENT  (
   CONTENT_ID           NUMBER(11)                       NOT NULL,
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   TYPE_ID              NUMBER(11)                         NOT NULL,
   MODEL_ID             NUMBER(11)                         NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   SORT_DATE            DATE                            NOT NULL,
   TOP_LEVEL            NUMBER(1)                       DEFAULT 0 NOT NULL,
   HAS_TITLE_IMG        NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_RECOMMEND         NUMBER(1)                       DEFAULT 0 NOT NULL,
   STATUS               NUMBER(1)                       DEFAULT 2 NOT NULL,
   VIEWS_DAY            NUMBER(11)                        DEFAULT 0 NOT NULL,
   COMMENTS_DAY         NUMBER(11)                       DEFAULT 0 NOT NULL,
   DOWNLOADS_DAY        NUMBER(11)                       DEFAULT 0 NOT NULL,
   UPS_DAY              NUMBER(11)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_CONTENT PRIMARY KEY (CONTENT_ID)
);

COMMENT ON TABLE JC_CONTENT IS
'CMS内容表;';

COMMENT ON COLUMN JC_CONTENT.CHANNEL_ID IS
'栏目ID';

COMMENT ON COLUMN JC_CONTENT.USER_ID IS
'用户ID';

COMMENT ON COLUMN JC_CONTENT.TYPE_ID IS
'属性ID';

COMMENT ON COLUMN JC_CONTENT.MODEL_ID IS
'模型ID';

COMMENT ON COLUMN JC_CONTENT.SITE_ID IS
'站点ID';

COMMENT ON COLUMN JC_CONTENT.SORT_DATE IS
'排序日期';

COMMENT ON COLUMN JC_CONTENT.TOP_LEVEL IS
'固顶级别';

COMMENT ON COLUMN JC_CONTENT.HAS_TITLE_IMG IS
'是否有标题图';

COMMENT ON COLUMN JC_CONTENT.IS_RECOMMEND IS
'是否推荐';

COMMENT ON COLUMN JC_CONTENT.STATUS IS
'状态(0:草稿;1:审核中;2:审核通过;3:回收站)';

COMMENT ON COLUMN JC_CONTENT.VIEWS_DAY IS
'日访问数';

COMMENT ON COLUMN JC_CONTENT.COMMENTS_DAY IS
'日评论数';

COMMENT ON COLUMN JC_CONTENT.DOWNLOADS_DAY IS
'日下载数';

COMMENT ON COLUMN JC_CONTENT.UPS_DAY IS
'日顶数';

/*==============================================================*/
/* Table: JC_CONTENT_ATTACHMENT                                 */
/*==============================================================*/
CREATE TABLE JC_CONTENT_ATTACHMENT  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   PRIORITY             NUMBER(11)                         NOT NULL,
   ATTACHMENT_PATH      VARCHAR2(255)                   NOT NULL,
   ATTACHMENT_NAME      VARCHAR2(100)                   NOT NULL,
   FILENAME             VARCHAR2(100),
   DOWNLOAD_COUNT       NUMBER(11)                        DEFAULT 0 NOT NULL
);

COMMENT ON TABLE JC_CONTENT_ATTACHMENT IS
'CMS内容附件表;';

COMMENT ON COLUMN JC_CONTENT_ATTACHMENT.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_CONTENT_ATTACHMENT.ATTACHMENT_PATH IS
'附件路径';

COMMENT ON COLUMN JC_CONTENT_ATTACHMENT.ATTACHMENT_NAME IS
'附件名称';

COMMENT ON COLUMN JC_CONTENT_ATTACHMENT.FILENAME IS
'文件名';

COMMENT ON COLUMN JC_CONTENT_ATTACHMENT.DOWNLOAD_COUNT IS
'下载次数';

/*==============================================================*/
/* Table: JC_CONTENT_ATTR                                       */
/*==============================================================*/
CREATE TABLE JC_CONTENT_ATTR  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   ATTR_NAME            VARCHAR2(30)                    NOT NULL,
   ATTR_VALUE           VARCHAR2(255)
);

COMMENT ON TABLE JC_CONTENT_ATTR IS
'CMS内容扩展属性表;';

COMMENT ON COLUMN JC_CONTENT_ATTR.ATTR_NAME IS
'名称';

COMMENT ON COLUMN JC_CONTENT_ATTR.ATTR_VALUE IS
'值';

/*==============================================================*/
/* Table: JC_CONTENT_CHANNEL                                    */
/*==============================================================*/
CREATE TABLE JC_CONTENT_CHANNEL  (
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_CONTENT_CHANNEL PRIMARY KEY (CHANNEL_ID, CONTENT_ID)
);

COMMENT ON TABLE JC_CONTENT_CHANNEL IS
'CMS内容栏目关联表;';

/*==============================================================*/
/* Table: JC_CONTENT_CHECK                                      */
/*==============================================================*/
CREATE TABLE JC_CONTENT_CHECK  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   CHECK_STEP           NUMBER(1)                       DEFAULT 0 NOT NULL,
   CHECK_OPINION        VARCHAR2(255),
   IS_REJECTED          NUMBER(1)                       DEFAULT 0 NOT NULL,
   REVIEWER             NUMBER(11),
   CHECK_DATE           DATE,
   CONSTRAINT PK_JC_CONTENT_CHECK PRIMARY KEY (CONTENT_ID)
);

COMMENT ON TABLE JC_CONTENT_CHECK IS
'CMS内容审核信息表; ';

COMMENT ON COLUMN JC_CONTENT_CHECK.CHECK_STEP IS
'审核步数';

COMMENT ON COLUMN JC_CONTENT_CHECK.CHECK_OPINION IS
'审核意见';

COMMENT ON COLUMN JC_CONTENT_CHECK.IS_REJECTED IS
'是否退回';

COMMENT ON COLUMN JC_CONTENT_CHECK.REVIEWER IS
'终审者';

COMMENT ON COLUMN JC_CONTENT_CHECK.CHECK_DATE IS
'终审时间';

/*==============================================================*/
/* Table: JC_CONTENT_COUNT                                      */
/*==============================================================*/
CREATE TABLE JC_CONTENT_COUNT  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   VIEWS                NUMBER(11)                        DEFAULT 0 NOT NULL,
   VIEWS_MONTH          NUMBER(11)                        DEFAULT 0 NOT NULL,
   VIEWS_WEEK           NUMBER(11)                        DEFAULT 0 NOT NULL,
   VIEWS_DAY            NUMBER(11)                        DEFAULT 0 NOT NULL,
   COMMENTS             NUMBER(11)                        DEFAULT 0 NOT NULL,
   COMMENTS_MONTH       NUMBER(11)                        DEFAULT 0 NOT NULL,
   COMMENTS_WEEK        NUMBER(11)                       DEFAULT 0 NOT NULL,
   COMMENTS_DAY         NUMBER(11)                       DEFAULT 0 NOT NULL,
   DOWNLOADS            NUMBER(11)                        DEFAULT 0 NOT NULL,
   DOWNLOADS_MONTH      NUMBER(11)                        DEFAULT 0 NOT NULL,
   DOWNLOADS_WEEK       NUMBER(11)                       DEFAULT 0 NOT NULL,
   DOWNLOADS_DAY        NUMBER(11)                       DEFAULT 0 NOT NULL,
   UPS                  NUMBER(11)                        DEFAULT 0 NOT NULL,
   UPS_MONTH            NUMBER(11)                        DEFAULT 0 NOT NULL,
   UPS_WEEK             NUMBER(11)                       DEFAULT 0 NOT NULL,
   UPS_DAY              NUMBER(11)                       DEFAULT 0 NOT NULL,
   DOWNS                NUMBER(11)                        DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_CONTENT_COUNT PRIMARY KEY (CONTENT_ID)
);

COMMENT ON TABLE JC_CONTENT_COUNT IS
'CMS内容计数表;';

COMMENT ON COLUMN JC_CONTENT_COUNT.VIEWS IS
'总访问数';

COMMENT ON COLUMN JC_CONTENT_COUNT.VIEWS_MONTH IS
'月访问数';

COMMENT ON COLUMN JC_CONTENT_COUNT.VIEWS_WEEK IS
'周访问数';

COMMENT ON COLUMN JC_CONTENT_COUNT.VIEWS_DAY IS
'日访问数';

COMMENT ON COLUMN JC_CONTENT_COUNT.COMMENTS IS
'总评论数';

COMMENT ON COLUMN JC_CONTENT_COUNT.COMMENTS_MONTH IS
'月评论数';

COMMENT ON COLUMN JC_CONTENT_COUNT.COMMENTS_WEEK IS
'周评论数';

COMMENT ON COLUMN JC_CONTENT_COUNT.COMMENTS_DAY IS
'日评论数';

COMMENT ON COLUMN JC_CONTENT_COUNT.DOWNLOADS IS
'总下载数';

COMMENT ON COLUMN JC_CONTENT_COUNT.DOWNLOADS_MONTH IS
'月下载数';

COMMENT ON COLUMN JC_CONTENT_COUNT.DOWNLOADS_WEEK IS
'周下载数';

COMMENT ON COLUMN JC_CONTENT_COUNT.DOWNLOADS_DAY IS
'日下载数';

COMMENT ON COLUMN JC_CONTENT_COUNT.UPS IS
'总顶数';

COMMENT ON COLUMN JC_CONTENT_COUNT.UPS_MONTH IS
'月顶数';

COMMENT ON COLUMN JC_CONTENT_COUNT.UPS_WEEK IS
'周顶数';

COMMENT ON COLUMN JC_CONTENT_COUNT.UPS_DAY IS
'日顶数';

COMMENT ON COLUMN JC_CONTENT_COUNT.DOWNS IS
'总踩数';

/*==============================================================*/
/* Table: JC_CONTENT_DOC                                        */
/*==============================================================*/
CREATE TABLE JC_CONTENT_DOC  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   DOC_PATH             VARCHAR2(255)                   NOT NULL,
   SWF_PATH             VARCHAR2(255),
   GRAIN                NUMBER(11)                        DEFAULT 0 NOT NULL,
   DOWN_NEED            NUMBER(11)                        DEFAULT 0 NOT NULL,
   IS_OPEN              NUMBER(1)                       DEFAULT 0 NOT NULL,
   FILE_SUFFIX          VARCHAR2(10)                    NOT NULL,
   AVG_SCORE            FLOAT(11)                      DEFAULT 0.0 NOT NULL,
   CONSTRAINT PK_JC_CONTENT_DOC PRIMARY KEY (CONTENT_ID)
);

COMMENT ON TABLE JC_CONTENT_DOC IS
'文库相关;';

COMMENT ON COLUMN JC_CONTENT_DOC.DOC_PATH IS
'文档路径';

COMMENT ON COLUMN JC_CONTENT_DOC.SWF_PATH IS
'转换的swf路径';

COMMENT ON COLUMN JC_CONTENT_DOC.GRAIN IS
'财富收益';

COMMENT ON COLUMN JC_CONTENT_DOC.DOWN_NEED IS
'下载需要财富';

COMMENT ON COLUMN JC_CONTENT_DOC.IS_OPEN IS
'是否开放';

COMMENT ON COLUMN JC_CONTENT_DOC.FILE_SUFFIX IS
'文档文件格式';

COMMENT ON COLUMN JC_CONTENT_DOC.AVG_SCORE IS
'平均得分';

/*==============================================================*/
/* Table: JC_CONTENT_EXT                                        */
/*==============================================================*/
CREATE TABLE JC_CONTENT_EXT  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   TITLE                VARCHAR2(150)                   NOT NULL,
   SHORT_TITLE          VARCHAR2(150),
   AUTHOR               VARCHAR2(100),
   ORIGIN               VARCHAR2(100),
   ORIGIN_URL           VARCHAR2(255),
   DESCRIPTION          VARCHAR2(1024),
   RELEASE_DATE         DATE                            NOT NULL,
   MEDIA_PATH           VARCHAR2(255),
   MEDIA_TYPE           VARCHAR2(20),
   TITLE_COLOR          VARCHAR2(10),
   IS_BOLD              NUMBER(1)                       DEFAULT 0 NOT NULL,
   TITLE_IMG            VARCHAR2(100),
   CONTENT_IMG          VARCHAR2(100),
   TYPE_IMG             VARCHAR2(100),
   LINK                 VARCHAR2(255),
   TPL_CONTENT          VARCHAR2(100),
   NEED_REGENERATE      NUMBER(1)                       DEFAULT 1 NOT NULL,
   CONSTRAINT PK_JC_CONTENT_EXT PRIMARY KEY (CONTENT_ID)
);

COMMENT ON TABLE JC_CONTENT_EXT IS
'CMS内容扩展表;';

COMMENT ON COLUMN JC_CONTENT_EXT.TITLE IS
'标题';

COMMENT ON COLUMN JC_CONTENT_EXT.SHORT_TITLE IS
'简短标题';

COMMENT ON COLUMN JC_CONTENT_EXT.AUTHOR IS
'作者';

COMMENT ON COLUMN JC_CONTENT_EXT.ORIGIN IS
'来源';

COMMENT ON COLUMN JC_CONTENT_EXT.ORIGIN_URL IS
'来源链接';

COMMENT ON COLUMN JC_CONTENT_EXT.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_CONTENT_EXT.RELEASE_DATE IS
'发布日期';

COMMENT ON COLUMN JC_CONTENT_EXT.MEDIA_PATH IS
'媒体路径';

COMMENT ON COLUMN JC_CONTENT_EXT.MEDIA_TYPE IS
'媒体类型';

COMMENT ON COLUMN JC_CONTENT_EXT.TITLE_COLOR IS
'标题颜色';

COMMENT ON COLUMN JC_CONTENT_EXT.IS_BOLD IS
'是否加粗';

COMMENT ON COLUMN JC_CONTENT_EXT.TITLE_IMG IS
'标题图片';

COMMENT ON COLUMN JC_CONTENT_EXT.CONTENT_IMG IS
'内容图片';

COMMENT ON COLUMN JC_CONTENT_EXT.TYPE_IMG IS
'类型图片';

COMMENT ON COLUMN JC_CONTENT_EXT.LINK IS
'外部链接';

COMMENT ON COLUMN JC_CONTENT_EXT.TPL_CONTENT IS
'指定模板';

COMMENT ON COLUMN JC_CONTENT_EXT.NEED_REGENERATE IS
'需要重新生成静态页';

/*==============================================================*/
/* Table: JC_CONTENT_GROUP_VIEW                                 */
/*==============================================================*/
CREATE TABLE JC_CONTENT_GROUP_VIEW  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   GROUP_ID             NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_CONTENT_GROUP_VIEW PRIMARY KEY (CONTENT_ID, GROUP_ID)
);

COMMENT ON TABLE JC_CONTENT_GROUP_VIEW IS
'CMS内容浏览会员组关联表;';

/*==============================================================*/
/* Table: JC_CONTENT_PICTURE                                    */
/*==============================================================*/
CREATE TABLE JC_CONTENT_PICTURE  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   PRIORITY             NUMBER(11)                         NOT NULL,
   IMG_PATH             VARCHAR2(100)                   NOT NULL,
   DESCRIPTION          VARCHAR2(500),
   CONSTRAINT PK_JC_CONTENT_PICTURE PRIMARY KEY (CONTENT_ID, PRIORITY)
);

COMMENT ON TABLE JC_CONTENT_PICTURE IS
'CMS内容图片表;';

COMMENT ON COLUMN JC_CONTENT_PICTURE.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_CONTENT_PICTURE.IMG_PATH IS
'图片地址';

COMMENT ON COLUMN JC_CONTENT_PICTURE.DESCRIPTION IS
'描述';

/*==============================================================*/
/* Table: JC_CONTENT_SHARE_CHECK                                */
/*==============================================================*/
CREATE TABLE JC_CONTENT_SHARE_CHECK  (
   SHARE_CHECK_ID       NUMBER(11)                       NOT NULL,
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   CHANNEL_ID           NUMBER(11)                         NOT NULL,
   CHECK_STATUS         NUMBER(1)                       DEFAULT 0 NOT NULL,
   CHECK_OPINION        VARCHAR2(255),
   SHARE_VALID          NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_CONTENT_SHARE_CHECK PRIMARY KEY (SHARE_CHECK_ID)
);

COMMENT ON TABLE JC_CONTENT_SHARE_CHECK IS
'CMS共享内容审核信息表;';

COMMENT ON COLUMN JC_CONTENT_SHARE_CHECK.CONTENT_ID IS
'共享内容';

COMMENT ON COLUMN JC_CONTENT_SHARE_CHECK.CHANNEL_ID IS
'共享栏目';

COMMENT ON COLUMN JC_CONTENT_SHARE_CHECK.CHECK_STATUS IS
'审核状态 0待审核 1审核通过 2推送';

COMMENT ON COLUMN JC_CONTENT_SHARE_CHECK.CHECK_OPINION IS
'审核意见';

COMMENT ON COLUMN JC_CONTENT_SHARE_CHECK.SHARE_VALID IS
'共享有效性';

/*==============================================================*/
/* Table: JC_CONTENT_TAG                                        */
/*==============================================================*/
CREATE TABLE JC_CONTENT_TAG  (
   TAG_ID               NUMBER(11)                       NOT NULL,
   TAG_NAME             VARCHAR2(50)                    NOT NULL,
   REF_COUNTER          NUMBER(11)                        DEFAULT 1 NOT NULL,
   CONSTRAINT PK_JC_CONTENT_TAG PRIMARY KEY (TAG_ID)
);

COMMENT ON TABLE JC_CONTENT_TAG IS
'CMS内容TAG表;';

COMMENT ON COLUMN JC_CONTENT_TAG.TAG_NAME IS
'tag名称';

COMMENT ON COLUMN JC_CONTENT_TAG.REF_COUNTER IS
'被引用的次数';

/*==============================================================*/
/* Table: JC_CONTENT_TOPIC                                      */
/*==============================================================*/
CREATE TABLE JC_CONTENT_TOPIC  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   TOPIC_ID             NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_CONTENT_TOPIC PRIMARY KEY (CONTENT_ID, TOPIC_ID)
);

COMMENT ON TABLE JC_CONTENT_TOPIC IS
'CMS专题内容关联表;';

/*==============================================================*/
/* Table: JC_CONTENT_TXT                                        */
/*==============================================================*/
CREATE TABLE JC_CONTENT_TXT  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   TXT                  CLOB,
   TXT1                 CLOB,
   TXT2                 CLOB,
   TXT3                 CLOB,
   CONSTRAINT PK_JC_CONTENT_TXT PRIMARY KEY (CONTENT_ID)
);

COMMENT ON TABLE JC_CONTENT_TXT IS
'CMS内容文本表;';

COMMENT ON COLUMN JC_CONTENT_TXT.TXT IS
'文章内容';

COMMENT ON COLUMN JC_CONTENT_TXT.TXT1 IS
'扩展内容1';

COMMENT ON COLUMN JC_CONTENT_TXT.TXT2 IS
'扩展内容2';

COMMENT ON COLUMN JC_CONTENT_TXT.TXT3 IS
'扩展内容3';

/*==============================================================*/
/* Table: JC_CONTENT_TYPE                                       */
/*==============================================================*/
CREATE TABLE JC_CONTENT_TYPE  (
   TYPE_ID              NUMBER(11)                         NOT NULL,
   TYPE_NAME            VARCHAR2(20)                    NOT NULL,
   IMG_WIDTH            NUMBER(11),
   IMG_HEIGHT           NUMBER(11),
   HAS_IMAGE            NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_DISABLED          NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_CONTENT_TYPE PRIMARY KEY (TYPE_ID)
);

COMMENT ON TABLE JC_CONTENT_TYPE IS
'CMS内容类型表;';

COMMENT ON COLUMN JC_CONTENT_TYPE.TYPE_NAME IS
'名称';

COMMENT ON COLUMN JC_CONTENT_TYPE.IMG_WIDTH IS
'图片宽';

COMMENT ON COLUMN JC_CONTENT_TYPE.IMG_HEIGHT IS
'图片高';

COMMENT ON COLUMN JC_CONTENT_TYPE.HAS_IMAGE IS
'是否有图片';

COMMENT ON COLUMN JC_CONTENT_TYPE.IS_DISABLED IS
'是否禁用';

/*==============================================================*/
/* Table: JC_CONTENTTAG                                         */
/*==============================================================*/
CREATE TABLE JC_CONTENTTAG  (
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   TAG_ID               NUMBER(11)                         NOT NULL,
   PRIORITY             NUMBER(11)                         NOT NULL
);

COMMENT ON TABLE JC_CONTENTTAG IS
'CMS内容标签关联表;';

/*==============================================================*/
/* Table: JC_DEPARTMENT                                         */
/*==============================================================*/
CREATE TABLE JC_DEPARTMENT  (
   DEPART_ID            NUMBER(11)                       NOT NULL,
   DEPART_NAME          VARCHAR2(255)                   NOT NULL,
   SITE_ID              NUMBER(11)                        DEFAULT 0,
   PRIORITY             NUMBER(11)                        DEFAULT 1 NOT NULL,
   WEIGHTS              NUMBER(11)                        DEFAULT 1 NOT NULL,
   PARENT_ID            NUMBER(11),
   CONSTRAINT PK_JC_DEPARTMENT PRIMARY KEY (DEPART_ID)
);

COMMENT ON TABLE JC_DEPARTMENT IS
'部门;';

COMMENT ON COLUMN JC_DEPARTMENT.DEPART_NAME IS
'部门名称';

COMMENT ON COLUMN JC_DEPARTMENT.SITE_ID IS
'站点';

COMMENT ON COLUMN JC_DEPARTMENT.PRIORITY IS
'排序';

COMMENT ON COLUMN JC_DEPARTMENT.WEIGHTS IS
'权重(值越大，级别越高)';

COMMENT ON COLUMN JC_DEPARTMENT.PARENT_ID IS
'父级部门ID';

/*==============================================================*/
/* Index: FK_JC_DEPARTMENT_SITE                                 */
/*==============================================================*/
CREATE INDEX FK_JC_DEPARTMENT_SITE ON JC_DEPARTMENT (
   SITE_ID ASC
);

/*==============================================================*/
/* Table: JC_DICTIONARY                                         */
/*==============================================================*/
CREATE TABLE JC_DICTIONARY  (
   ID                   NUMBER(11)                       NOT NULL,
   NAME                 VARCHAR2(255)                   NOT NULL,
   VALUE                VARCHAR2(255)                   NOT NULL,
   TYPE                 VARCHAR2(255)                   NOT NULL,
   CONSTRAINT PK_JC_DICTIONARY PRIMARY KEY (ID)
);

COMMENT ON TABLE JC_DICTIONARY IS
'字典表;';

COMMENT ON COLUMN JC_DICTIONARY.NAME IS
'name';

COMMENT ON COLUMN JC_DICTIONARY.VALUE IS
'value';

COMMENT ON COLUMN JC_DICTIONARY.TYPE IS
'type';

/*==============================================================*/
/* Table: JC_FILE                                               */
/*==============================================================*/
CREATE TABLE JC_FILE  (
   FILE_PATH            VARCHAR2(255)                   NOT NULL,
   FILE_NAME            VARCHAR2(255),
   FILE_ISVALID         NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONTENT_ID           NUMBER(11),
   CONSTRAINT PK_JC_FILE PRIMARY KEY (FILE_PATH)
);

COMMENT ON TABLE JC_FILE IS
'附件';

COMMENT ON COLUMN JC_FILE.FILE_PATH IS
'文件路径';

COMMENT ON COLUMN JC_FILE.FILE_NAME IS
'文件名字';

COMMENT ON COLUMN JC_FILE.FILE_ISVALID IS
'是否有效';

COMMENT ON COLUMN JC_FILE.CONTENT_ID IS
'内容id';

/*==============================================================*/
/* Index: FK_JC_FILE_CONTENT                                    */
/*==============================================================*/
CREATE INDEX FK_JC_FILE_CONTENT ON JC_FILE (
   CONTENT_ID ASC
);

/*==============================================================*/
/* Table: JC_FRIENDLINK                                         */
/*==============================================================*/
CREATE TABLE JC_FRIENDLINK  (
   FRIENDLINK_ID        NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   FRIENDLINKCTG_ID     NUMBER(11)                         NOT NULL,
   SITE_NAME            VARCHAR2(150)                   NOT NULL,
   DOMAIN               VARCHAR2(255)                   NOT NULL,
   LOGO                 VARCHAR2(150),
   EMAIL                VARCHAR2(100),
   DESCRIPTION          VARCHAR2(255),
   VIEWS                NUMBER(11)                        DEFAULT 0 NOT NULL,
   IS_ENABLED           CHAR(1)                        DEFAULT '1' NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   CONSTRAINT PK_JC_FRIENDLINK PRIMARY KEY (FRIENDLINK_ID)
);

COMMENT ON TABLE JC_FRIENDLINK IS
'CMS友情链接; ';

COMMENT ON COLUMN JC_FRIENDLINK.SITE_NAME IS
'网站名称';

COMMENT ON COLUMN JC_FRIENDLINK.DOMAIN IS
'网站地址';

COMMENT ON COLUMN JC_FRIENDLINK.LOGO IS
'图标';

COMMENT ON COLUMN JC_FRIENDLINK.EMAIL IS
'站长邮箱';

COMMENT ON COLUMN JC_FRIENDLINK.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_FRIENDLINK.VIEWS IS
'点击次数';

COMMENT ON COLUMN JC_FRIENDLINK.IS_ENABLED IS
'是否显示';

COMMENT ON COLUMN JC_FRIENDLINK.PRIORITY IS
'排列顺序';

/*==============================================================*/
/* Table: JC_FRIENDLINK_CTG                                     */
/*==============================================================*/
CREATE TABLE JC_FRIENDLINK_CTG  (
   FRIENDLINKCTG_ID     NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   FRIENDLINKCTG_NAME   VARCHAR2(50)                    NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   CONSTRAINT PK_JC_FRIENDLINK_CTG PRIMARY KEY (FRIENDLINKCTG_ID)
);

COMMENT ON TABLE JC_FRIENDLINK_CTG IS
'CMS友情链接类别;';

COMMENT ON COLUMN JC_FRIENDLINK_CTG.FRIENDLINKCTG_NAME IS
'名称';

COMMENT ON COLUMN JC_FRIENDLINK_CTG.PRIORITY IS
'排列顺序';

/*==============================================================*/
/* Table: JC_GROUP                                              */
/*==============================================================*/
CREATE TABLE JC_GROUP  (
   GROUP_ID             NUMBER(11)                       NOT NULL,
   GROUP_NAME           VARCHAR2(100)                   NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   NEED_CAPTCHA         NUMBER(1)                       DEFAULT 1 NOT NULL,
   NEED_CHECK           NUMBER(1)                       DEFAULT 1 NOT NULL,
   ALLOW_PER_DAY        NUMBER(11)                        DEFAULT 4096 NOT NULL,
   ALLOW_MAX_FILE       NUMBER(11)                        DEFAULT 1024 NOT NULL,
   ALLOW_SUFFIX         VARCHAR2(255)                  DEFAULT 'jpg,jpeg,gif,png,bmp',
   IS_REG_DEF           NUMBER(1)                       DEFAULT 0 NOT NULL,
   ALLOW_FILE_SIZE      NUMBER(11)                        DEFAULT 4096 NOT NULL,
   ALLOW_FILE_TOTAL     NUMBER(11)                        DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_GROUP PRIMARY KEY (GROUP_ID)
);

COMMENT ON TABLE JC_GROUP IS
'CMS会员组表;';

COMMENT ON COLUMN JC_GROUP.GROUP_NAME IS
'名称';

COMMENT ON COLUMN JC_GROUP.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_GROUP.NEED_CAPTCHA IS
'是否需要验证码';

COMMENT ON COLUMN JC_GROUP.NEED_CHECK IS
'是否需要审核';

COMMENT ON COLUMN JC_GROUP.ALLOW_PER_DAY IS
'每日允许上传KB';

COMMENT ON COLUMN JC_GROUP.ALLOW_MAX_FILE IS
'每个文件最大KB';

COMMENT ON COLUMN JC_GROUP.ALLOW_SUFFIX IS
'允许上传的后缀';

COMMENT ON COLUMN JC_GROUP.IS_REG_DEF IS
'是否默认会员组';

COMMENT ON COLUMN JC_GROUP.ALLOW_FILE_SIZE IS
'每个上传文库的文件大小限制kB';

COMMENT ON COLUMN JC_GROUP.ALLOW_FILE_TOTAL IS
'上传总数限制(0没有限制)';

/*==============================================================*/
/* Table: JC_GUESTBOOK                                          */
/*==============================================================*/
CREATE TABLE JC_GUESTBOOK  (
   GUESTBOOK_ID         NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   GUESTBOOKCTG_ID      NUMBER(11)                         NOT NULL,
   MEMBER_ID            NUMBER(11),
   ADMIN_ID             NUMBER(11),
   IP                   VARCHAR2(50)                    NOT NULL,
   CREATE_TIME          DATE                            NOT NULL,
   REPLAY_TIME          DATE,
   IS_CHECKED           NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_RECOMMEND         NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_GUESTBOOK PRIMARY KEY (GUESTBOOK_ID)
);

COMMENT ON TABLE JC_GUESTBOOK IS
'CMS留言;';

COMMENT ON COLUMN JC_GUESTBOOK.MEMBER_ID IS
'留言会员';

COMMENT ON COLUMN JC_GUESTBOOK.ADMIN_ID IS
'回复管理员';

COMMENT ON COLUMN JC_GUESTBOOK.IP IS
'留言IP';

COMMENT ON COLUMN JC_GUESTBOOK.CREATE_TIME IS
'留言时间';

COMMENT ON COLUMN JC_GUESTBOOK.REPLAY_TIME IS
'回复时间';

COMMENT ON COLUMN JC_GUESTBOOK.IS_CHECKED IS
'是否审核';

COMMENT ON COLUMN JC_GUESTBOOK.IS_RECOMMEND IS
'是否推荐';

/*==============================================================*/
/* Table: JC_GUESTBOOK_CTG                                      */
/*==============================================================*/
CREATE TABLE JC_GUESTBOOK_CTG  (
   GUESTBOOKCTG_ID      NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   CTG_NAME             VARCHAR2(100)                   NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   DESCRIPTION          VARCHAR2(255),
   CONSTRAINT PK_JC_GUESTBOOK_CTG PRIMARY KEY (GUESTBOOKCTG_ID)
);

COMMENT ON TABLE JC_GUESTBOOK_CTG IS
'CMS留言类别;';

COMMENT ON COLUMN JC_GUESTBOOK_CTG.CTG_NAME IS
'名称';

COMMENT ON COLUMN JC_GUESTBOOK_CTG.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_GUESTBOOK_CTG.DESCRIPTION IS
'描述';

/*==============================================================*/
/* Table: JC_GUESTBOOK_CTG_DEPARTMENT                           */
/*==============================================================*/
CREATE TABLE JC_GUESTBOOK_CTG_DEPARTMENT  (
   GUESTBOOKCTG_ID      NUMBER(11)                         NOT NULL,
   DEPART_ID            NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_GUESTBOOK_CTG_DEPARTMENT PRIMARY KEY (GUESTBOOKCTG_ID, DEPART_ID)
);

COMMENT ON TABLE JC_GUESTBOOK_CTG_DEPARTMENT IS
'CMS留言类别部门关联表;';

/*==============================================================*/
/* Index: FK_JC_CHANNEL_DEPARTMENT                              */
/*==============================================================*/
CREATE INDEX FK_JC_CHANNEL_DEPARTMENT ON JC_GUESTBOOK_CTG_DEPARTMENT (
   DEPART_ID ASC
);

/*==============================================================*/
/* Table: JC_GUESTBOOK_EXT                                      */
/*==============================================================*/
CREATE TABLE JC_GUESTBOOK_EXT  (
   GUESTBOOK_ID         NUMBER(11)                         NOT NULL,
   TITLE                VARCHAR2(255),
   CONTENT              CLOB,
   REPLY                CLOB,
   EMAIL                VARCHAR2(100),
   PHONE                VARCHAR2(100),
   QQ                   VARCHAR2(50)
);

COMMENT ON TABLE JC_GUESTBOOK_EXT IS
'CMS留言内容;';

COMMENT ON COLUMN JC_GUESTBOOK_EXT.TITLE IS
'留言标题';

COMMENT ON COLUMN JC_GUESTBOOK_EXT.CONTENT IS
'留言内容';

COMMENT ON COLUMN JC_GUESTBOOK_EXT.REPLY IS
'回复内容';

COMMENT ON COLUMN JC_GUESTBOOK_EXT.EMAIL IS
'电子邮件';

COMMENT ON COLUMN JC_GUESTBOOK_EXT.PHONE IS
'电话';

COMMENT ON COLUMN JC_GUESTBOOK_EXT.QQ IS
'QQ';

/*==============================================================*/
/* Table: JC_JOB_APPLY                                          */
/*==============================================================*/
CREATE TABLE JC_JOB_APPLY  (
   JOB_APPLY_ID         NUMBER(11)                       NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   CONTENT_ID           NUMBER(11)                         NOT NULL,
   APPLY_TIME           DATE                            NOT NULL,
   CONSTRAINT PK_JC_JOB_APPLY PRIMARY KEY (JOB_APPLY_ID)
);

COMMENT ON TABLE JC_JOB_APPLY IS
'职位申请表;';

COMMENT ON COLUMN JC_JOB_APPLY.USER_ID IS
'用户id';

COMMENT ON COLUMN JC_JOB_APPLY.CONTENT_ID IS
'职位id';

COMMENT ON COLUMN JC_JOB_APPLY.APPLY_TIME IS
'申请时间';

/*==============================================================*/
/* Table: JC_KEYWORD                                            */
/*==============================================================*/
CREATE TABLE JC_KEYWORD  (
   KEYWORD_ID           NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11),
   KEYWORD_NAME         VARCHAR2(100)                   NOT NULL,
   URL                  VARCHAR2(255)                   NOT NULL,
   IS_DISABLED          NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_KEYWORD PRIMARY KEY (KEYWORD_ID)
);

COMMENT ON TABLE JC_KEYWORD IS
'CMS内容关键词表;';

COMMENT ON COLUMN JC_KEYWORD.SITE_ID IS
'站点ID';

COMMENT ON COLUMN JC_KEYWORD.KEYWORD_NAME IS
'名称';

COMMENT ON COLUMN JC_KEYWORD.URL IS
'链接';

COMMENT ON COLUMN JC_KEYWORD.IS_DISABLED IS
'是否禁用';

/*==============================================================*/
/* Table: JC_LOG                                                */
/*==============================================================*/
CREATE TABLE JC_LOG  (
   LOG_ID               NUMBER(11)                       NOT NULL,
   USER_ID              NUMBER(11),
   SITE_ID              NUMBER(11),
   CATEGORY             NUMBER(11)                         NOT NULL,
   LOG_TIME             DATE                            NOT NULL,
   IP                   VARCHAR2(50),
   URL                  VARCHAR2(255),
   TITLE                VARCHAR2(255),
   CONTENT              VARCHAR2(255),
   CONSTRAINT PK_JC_LOG PRIMARY KEY (LOG_ID)
);

COMMENT ON TABLE JC_LOG IS
'CMS日志表;';

COMMENT ON COLUMN JC_LOG.CATEGORY IS
'日志类型';

COMMENT ON COLUMN JC_LOG.LOG_TIME IS
'日志时间';

COMMENT ON COLUMN JC_LOG.IP IS
'IP地址';

COMMENT ON COLUMN JC_LOG.URL IS
'URL地址';

COMMENT ON COLUMN JC_LOG.TITLE IS
'日志标题';

COMMENT ON COLUMN JC_LOG.CONTENT IS
'日志内容';

/*==============================================================*/
/* Table: JC_MESSAGE                                            */
/*==============================================================*/
CREATE TABLE JC_MESSAGE  (
   MSG_ID               NUMBER(11)                       NOT NULL,
   MSG_TITLE            VARCHAR2(255)                   NOT NULL,
   MSG_CONTENT          CLOB,
   SEND_TIME            TIMESTAMP,
   MSG_SEND_USER        NUMBER(11)                        DEFAULT 1 NOT NULL,
   MSG_RECEIVER_USER    NUMBER(11)                        DEFAULT 0 NOT NULL,
   SITE_ID              NUMBER(11)                        DEFAULT 1 NOT NULL,
   MSG_STATUS           NUMBER(1)                       DEFAULT 0 NOT NULL,
   MSG_BOX              NUMBER(11)                        DEFAULT 1 NOT NULL,
   CONSTRAINT PK_JC_MESSAGE PRIMARY KEY (MSG_ID)
);

COMMENT ON TABLE JC_MESSAGE IS
'站内信;';

COMMENT ON COLUMN JC_MESSAGE.MSG_ID IS
'消息id';

COMMENT ON COLUMN JC_MESSAGE.MSG_TITLE IS
'标题';

COMMENT ON COLUMN JC_MESSAGE.MSG_CONTENT IS
'站内信息内容';

COMMENT ON COLUMN JC_MESSAGE.SEND_TIME IS
'发送时间';

COMMENT ON COLUMN JC_MESSAGE.MSG_SEND_USER IS
'发信息人';

COMMENT ON COLUMN JC_MESSAGE.MSG_RECEIVER_USER IS
'接收人';

COMMENT ON COLUMN JC_MESSAGE.SITE_ID IS
'站点';

COMMENT ON COLUMN JC_MESSAGE.MSG_STATUS IS
'消息状态0未读，1已读';

COMMENT ON COLUMN JC_MESSAGE.MSG_BOX IS
'消息信箱 0收件箱 1发件箱 2草稿箱 3垃圾箱';

/*==============================================================*/
/* Table: JC_MODEL                                              */
/*==============================================================*/
CREATE TABLE JC_MODEL  (
   MODEL_ID             NUMBER(11)                         NOT NULL,
   MODEL_NAME           VARCHAR2(100)                   NOT NULL,
   MODEL_PATH           VARCHAR2(100)                   NOT NULL,
   TPL_CHANNEL_PREFIX   VARCHAR2(20),
   TPL_CONTENT_PREFIX   VARCHAR2(20),
   TITLE_IMG_WIDTH      NUMBER(11)                        DEFAULT 139 NOT NULL,
   TITLE_IMG_HEIGHT     NUMBER(11)                        DEFAULT 139 NOT NULL,
   CONTENT_IMG_WIDTH    NUMBER(11)                        DEFAULT 310 NOT NULL,
   CONTENT_IMG_HEIGHT   NUMBER(11)                        DEFAULT 310 NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   HAS_CONTENT          NUMBER(1)                       DEFAULT 1 NOT NULL,
   IS_DISABLED          NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_DEF               NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_MODEL PRIMARY KEY (MODEL_ID)
);

COMMENT ON TABLE JC_MODEL IS
'CMS模型表;';

COMMENT ON COLUMN JC_MODEL.MODEL_NAME IS
'名称';

COMMENT ON COLUMN JC_MODEL.MODEL_PATH IS
'路径';

COMMENT ON COLUMN JC_MODEL.TPL_CHANNEL_PREFIX IS
'栏目模板前缀';

COMMENT ON COLUMN JC_MODEL.TPL_CONTENT_PREFIX IS
'内容模板前缀';

COMMENT ON COLUMN JC_MODEL.TITLE_IMG_WIDTH IS
'栏目标题图宽度';

COMMENT ON COLUMN JC_MODEL.TITLE_IMG_HEIGHT IS
'栏目标题图高度';

COMMENT ON COLUMN JC_MODEL.CONTENT_IMG_WIDTH IS
'栏目内容图宽度';

COMMENT ON COLUMN JC_MODEL.CONTENT_IMG_HEIGHT IS
'栏目内容图高度';

COMMENT ON COLUMN JC_MODEL.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_MODEL.HAS_CONTENT IS
'是否有内容';

COMMENT ON COLUMN JC_MODEL.IS_DISABLED IS
'是否禁用';

COMMENT ON COLUMN JC_MODEL.IS_DEF IS
'是否默认模型';

/*==============================================================*/
/* Table: JC_MODEL_ITEM                                         */
/*==============================================================*/
CREATE TABLE JC_MODEL_ITEM  (
   MODELITEM_ID         NUMBER(11)                       NOT NULL,
   MODEL_ID             NUMBER(11)                         NOT NULL,
   FIELD                VARCHAR2(50)                    NOT NULL,
   ITEM_LABEL           VARCHAR2(100)                   NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 70 NOT NULL,
   DEF_VALUE            VARCHAR2(255),
   OPT_VALUE            VARCHAR2(255),
   TEXT_SIZE            VARCHAR2(20),
   AREA_ROWS            VARCHAR2(3),
   AREA_COLS            VARCHAR2(3),
   HELP                 VARCHAR2(255),
   HELP_POSITION        VARCHAR2(1),
   DATA_TYPE            NUMBER(11)                        DEFAULT 1 NOT NULL,
   IS_SINGLE            NUMBER(1)                       DEFAULT 1 NOT NULL,
   IS_CHANNEL           NUMBER(1)                       DEFAULT 1 NOT NULL,
   IS_CUSTOM            NUMBER(1)                       DEFAULT 1 NOT NULL,
   IS_DISPLAY           NUMBER(1)                       DEFAULT 1 NOT NULL,
   CONSTRAINT PK_JC_MODEL_ITEM PRIMARY KEY (MODELITEM_ID)
);

COMMENT ON TABLE JC_MODEL_ITEM IS
'CMS模型项表;';

COMMENT ON COLUMN JC_MODEL_ITEM.FIELD IS
'字段';

COMMENT ON COLUMN JC_MODEL_ITEM.ITEM_LABEL IS
'名称';

COMMENT ON COLUMN JC_MODEL_ITEM.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_MODEL_ITEM.DEF_VALUE IS
'默认值';

COMMENT ON COLUMN JC_MODEL_ITEM.OPT_VALUE IS
'可选项';

COMMENT ON COLUMN JC_MODEL_ITEM.TEXT_SIZE IS
'长度';

COMMENT ON COLUMN JC_MODEL_ITEM.AREA_ROWS IS
'文本行数';

COMMENT ON COLUMN JC_MODEL_ITEM.AREA_COLS IS
'文本列数';

COMMENT ON COLUMN JC_MODEL_ITEM.HELP IS
'帮助信息';

COMMENT ON COLUMN JC_MODEL_ITEM.HELP_POSITION IS
'帮助位置';

COMMENT ON COLUMN JC_MODEL_ITEM.DATA_TYPE IS
'数据类型';

COMMENT ON COLUMN JC_MODEL_ITEM.IS_SINGLE IS
'是否独占一行';

COMMENT ON COLUMN JC_MODEL_ITEM.IS_CHANNEL IS
'是否栏目模型项';

COMMENT ON COLUMN JC_MODEL_ITEM.IS_CUSTOM IS
'是否自定义';

COMMENT ON COLUMN JC_MODEL_ITEM.IS_DISPLAY IS
'是否显示';

/*==============================================================*/
/* Table: JC_RECEIVER_MESSAGE                                   */
/*==============================================================*/
CREATE TABLE JC_RECEIVER_MESSAGE  (
   MSG_RE_ID            NUMBER(11)                       NOT NULL,
   MSG_TITLE            VARCHAR2(255)                   NOT NULL,
   MSG_CONTENT          CLOB,
   SEND_TIME            TIMESTAMP,
   MSG_SEND_USER        NUMBER(11)                        DEFAULT 1 NOT NULL,
   MSG_RECEIVER_USER    NUMBER(11)                        DEFAULT 0 NOT NULL,
   SITE_ID              NUMBER(11)                        DEFAULT 1 NOT NULL,
   MSG_STATUS           NUMBER(1)                       DEFAULT 0 NOT NULL,
   MSG_BOX              NUMBER(11)                        DEFAULT 1 NOT NULL,
   MSG_ID               NUMBER(11),
   CONSTRAINT PK_JC_RECEIVER_MESSAGE PRIMARY KEY (MSG_RE_ID)
);

COMMENT ON TABLE JC_RECEIVER_MESSAGE IS
'站内信收信表;';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_RE_ID IS
'消息id';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_TITLE IS
'标题';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_CONTENT IS
'站内信息内容';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.SEND_TIME IS
'发送时间';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_SEND_USER IS
'发信息人';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_RECEIVER_USER IS
'接收人';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.SITE_ID IS
'站点';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_STATUS IS
'消息状态0未读，1已读';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_BOX IS
'消息信箱 0收件箱 1发件箱 2草稿箱 3垃圾箱';

COMMENT ON COLUMN JC_RECEIVER_MESSAGE.MSG_ID IS
'发信的信件id';

/*==============================================================*/
/* Index: JC_RECEIVER_MESSAGE_SITE                              */
/*==============================================================*/
CREATE INDEX JC_RECEIVER_MESSAGE_SITE ON JC_RECEIVER_MESSAGE (
   SITE_ID ASC
);

/*==============================================================*/
/* Index: JC_MSG_USER_RECEIVER                                  */
/*==============================================================*/
CREATE INDEX JC_MSG_USER_RECEIVER ON JC_RECEIVER_MESSAGE (
   MSG_RECEIVER_USER ASC
);

/*==============================================================*/
/* Index: JC_RECEIVER_MESSAGE_USER_SEND                         */
/*==============================================================*/
CREATE INDEX JC_RECEIVER_MESSAGE_USER_SEND ON JC_RECEIVER_MESSAGE (
   MSG_SEND_USER ASC
);

/*==============================================================*/
/* Table: JC_ROLE                                               */
/*==============================================================*/
CREATE TABLE JC_ROLE  (
   ROLE_ID              NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11),
   ROLE_NAME            VARCHAR2(100)                   NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   IS_SUPER             CHAR(1)                        DEFAULT '0' NOT NULL,
   CONSTRAINT PK_JC_ROLE PRIMARY KEY (ROLE_ID)
);

COMMENT ON TABLE JC_ROLE IS
'CMS角色表;';

COMMENT ON COLUMN JC_ROLE.ROLE_NAME IS
'角色名称';

COMMENT ON COLUMN JC_ROLE.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_ROLE.IS_SUPER IS
'拥有所有权限';

/*==============================================================*/
/* Table: JC_ROLE_PERMISSION                                    */
/*==============================================================*/
CREATE TABLE JC_ROLE_PERMISSION  (
   ROLE_ID              NUMBER(11)                         NOT NULL,
   URI                  VARCHAR2(100)                   NOT NULL
);

COMMENT ON TABLE JC_ROLE_PERMISSION IS
'CMS角色授权表;';

/*==============================================================*/
/* Table: JC_SENSITIVITY                                        */
/*==============================================================*/
CREATE TABLE JC_SENSITIVITY  (
   SENSITIVITY_ID       NUMBER(11)                       NOT NULL,
   SEARCH               VARCHAR2(255)                   NOT NULL,
   REPLACEMENT          VARCHAR2(255)                   NOT NULL,
   CONSTRAINT PK_JC_SENSITIVITY PRIMARY KEY (SENSITIVITY_ID)
);

COMMENT ON TABLE JC_SENSITIVITY IS
'CMS敏感词表;';

COMMENT ON COLUMN JC_SENSITIVITY.SEARCH IS
'敏感词';

COMMENT ON COLUMN JC_SENSITIVITY.REPLACEMENT IS
'替换词';

/*==============================================================*/
/* Table: JC_SITE                                               */
/*==============================================================*/
CREATE TABLE JC_SITE  (
   SITE_ID              NUMBER(11)                       NOT NULL,
   CONFIG_ID            NUMBER(11)                         NOT NULL,
   FTP_UPLOAD_ID        NUMBER(11),
   DOMAIN               VARCHAR2(50)                    NOT NULL,
   SITE_PATH            VARCHAR2(20)                    NOT NULL,
   SITE_NAME            VARCHAR2(100)                   NOT NULL,
   SHORT_NAME           VARCHAR2(100)                   NOT NULL,
   PROTOCOL             VARCHAR2(20)                   DEFAULT 'http://' NOT NULL,
   DYNAMIC_SUFFIX       VARCHAR2(10)                   DEFAULT '.jhtml' NOT NULL,
   STATIC_SUFFIX        VARCHAR2(10)                   DEFAULT '.html' NOT NULL,
   STATIC_DIR           VARCHAR2(50),
   IS_INDEX_TO_ROOT     CHAR(1)                        DEFAULT '0' NOT NULL,
   IS_STATIC_INDEX      CHAR(1)                        DEFAULT '0' NOT NULL,
   LOCALE_ADMIN         VARCHAR2(10)                   DEFAULT 'zh_ch' NOT NULL,
   LOCALE_FRONT         VARCHAR2(10)                   DEFAULT 'zh_ch' NOT NULL,
   TPL_SOLUTION         VARCHAR2(50)                   DEFAULT 'default' NOT NULL,
   FINAL_STEP           NUMBER(1)                      DEFAULT 2 NOT NULL,
   AFTER_CHECK          NUMBER(1)                      DEFAULT 2 NOT NULL,
   IS_RELATIVE_PATH     CHAR(1)                        DEFAULT '1' NOT NULL,
   IS_RECYCLE_ON        CHAR(1)                        DEFAULT '1' NOT NULL,
   DOMAIN_ALIAS         VARCHAR2(255),
   DOMAIN_REDIRECT      VARCHAR2(255),
   IS_MASTER            NUMBER(1)                       DEFAULT 0,
   CONSTRAINT PK_JC_SITE PRIMARY KEY (SITE_ID)
);

COMMENT ON TABLE JC_SITE IS
'CMS站点表; ';

COMMENT ON COLUMN JC_SITE.CONFIG_ID IS
'配置ID';

COMMENT ON COLUMN JC_SITE.FTP_UPLOAD_ID IS
'上传ftp';

COMMENT ON COLUMN JC_SITE.DOMAIN IS
'域名';

COMMENT ON COLUMN JC_SITE.SITE_PATH IS
'路径';

COMMENT ON COLUMN JC_SITE.SITE_NAME IS
'网站名称';

COMMENT ON COLUMN JC_SITE.SHORT_NAME IS
'简短名称';

COMMENT ON COLUMN JC_SITE.PROTOCOL IS
'协议';

COMMENT ON COLUMN JC_SITE.DYNAMIC_SUFFIX IS
'动态页后缀';

COMMENT ON COLUMN JC_SITE.STATIC_SUFFIX IS
'静态页后缀';

COMMENT ON COLUMN JC_SITE.STATIC_DIR IS
'静态页存放目录';

COMMENT ON COLUMN JC_SITE.IS_INDEX_TO_ROOT IS
'是否使用将首页放在根目录下';

COMMENT ON COLUMN JC_SITE.IS_STATIC_INDEX IS
'是否静态化首页';

COMMENT ON COLUMN JC_SITE.LOCALE_ADMIN IS
'后台本地化';

COMMENT ON COLUMN JC_SITE.LOCALE_FRONT IS
'前台本地化';

COMMENT ON COLUMN JC_SITE.TPL_SOLUTION IS
'模板方案';

COMMENT ON COLUMN JC_SITE.FINAL_STEP IS
'终审级别';

COMMENT ON COLUMN JC_SITE.AFTER_CHECK IS
'审核后(1:不能修改删除;2:修改后退回;3:修改后不变)';

COMMENT ON COLUMN JC_SITE.IS_RELATIVE_PATH IS
'是否使用相对路径';

COMMENT ON COLUMN JC_SITE.IS_RECYCLE_ON IS
'是否开启回收站';

COMMENT ON COLUMN JC_SITE.DOMAIN_ALIAS IS
'域名别名';

COMMENT ON COLUMN JC_SITE.DOMAIN_REDIRECT IS
'域名重定向';

COMMENT ON COLUMN JC_SITE.IS_MASTER IS
'是否主站';

/*==============================================================*/
/* Table: JC_SITE_ATTR                                          */
/*==============================================================*/
CREATE TABLE JC_SITE_ATTR  (
   SITE_ID              NUMBER(11)                         NOT NULL,
   ATTR_NAME            VARCHAR2(30)                    NOT NULL,
   ATTR_VALUE           VARCHAR2(255)
);

COMMENT ON TABLE JC_SITE_ATTR IS
'CMS站点属性表;';

COMMENT ON COLUMN JC_SITE_ATTR.ATTR_NAME IS
'名称';

COMMENT ON COLUMN JC_SITE_ATTR.ATTR_VALUE IS
'值';

/*==============================================================*/
/* Table: JC_SITE_CFG                                           */
/*==============================================================*/
CREATE TABLE JC_SITE_CFG  (
   SITE_ID              NUMBER(11)                         NOT NULL,
   CFG_NAME             VARCHAR2(30)                    NOT NULL,
   CFG_VALUE            VARCHAR2(255)
);

COMMENT ON TABLE JC_SITE_CFG IS
'CMS站点配置表;';

COMMENT ON COLUMN JC_SITE_CFG.CFG_NAME IS
'名称';

COMMENT ON COLUMN JC_SITE_CFG.CFG_VALUE IS
'值';

/*==============================================================*/
/* Table: JC_SITE_COMPANY                                       */
/*==============================================================*/
CREATE TABLE JC_SITE_COMPANY  (
   SITE_ID              NUMBER(11)                         NOT NULL,
   NAME                 VARCHAR2(255)                   NOT NULL,
   SCALE                VARCHAR2(255),
   NATURE               VARCHAR2(255),
   INDUSTRY             VARCHAR2(1000),
   CONTACT              VARCHAR2(500),
   DESCRIPTION          CLOB,
   ADDRESS              VARCHAR2(500),
   LONGITUDE            FLOAT(5),
   LATITUDE             FLOAT(4),
   CONSTRAINT PK_JC_SITE_COMPANY PRIMARY KEY (SITE_ID)
);

COMMENT ON TABLE JC_SITE_COMPANY IS
'公司信息;';

COMMENT ON COLUMN JC_SITE_COMPANY.NAME IS
'公司名称';

COMMENT ON COLUMN JC_SITE_COMPANY.SCALE IS
'公司规模';

COMMENT ON COLUMN JC_SITE_COMPANY.NATURE IS
'公司性质';

COMMENT ON COLUMN JC_SITE_COMPANY.INDUSTRY IS
'公司行业';

COMMENT ON COLUMN JC_SITE_COMPANY.CONTACT IS
'联系方式';

COMMENT ON COLUMN JC_SITE_COMPANY.DESCRIPTION IS
'公司简介';

COMMENT ON COLUMN JC_SITE_COMPANY.ADDRESS IS
'公司地址';

COMMENT ON COLUMN JC_SITE_COMPANY.LONGITUDE IS
'经度';

COMMENT ON COLUMN JC_SITE_COMPANY.LATITUDE IS
'纬度';

/*==============================================================*/
/* Table: JC_SITE_FLOW                                          */
/*==============================================================*/
CREATE TABLE JC_SITE_FLOW  (
   FLOW_ID              NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11),
   ACCESS_IP            VARCHAR2(50)                   DEFAULT '127.0.0.1' NOT NULL,
   ACCESS_DATE          VARCHAR2(50),
   ACCESS_TIME          DATE,
   ACCESS_PAGE          VARCHAR2(255)                   NOT NULL,
   REFERER_WEBSITE      VARCHAR2(255),
   REFERER_PAGE         VARCHAR2(255),
   REFERER_KEYWORD      VARCHAR2(255),
   AREA                 VARCHAR2(50),
   SESSION_ID           VARCHAR2(255)                   NOT NULL,
   CONSTRAINT PK_JC_SITE_FLOW PRIMARY KEY (FLOW_ID)
);

COMMENT ON TABLE JC_SITE_FLOW IS
'站点流量统计表;';

COMMENT ON COLUMN JC_SITE_FLOW.ACCESS_IP IS
'访问者ip';

COMMENT ON COLUMN JC_SITE_FLOW.ACCESS_DATE IS
'访问日期';

COMMENT ON COLUMN JC_SITE_FLOW.ACCESS_TIME IS
'访问时间';

COMMENT ON COLUMN JC_SITE_FLOW.ACCESS_PAGE IS
'访问页面';

COMMENT ON COLUMN JC_SITE_FLOW.REFERER_WEBSITE IS
'来访网站';

COMMENT ON COLUMN JC_SITE_FLOW.REFERER_PAGE IS
'来访页面';

COMMENT ON COLUMN JC_SITE_FLOW.REFERER_KEYWORD IS
'来访关键字';

COMMENT ON COLUMN JC_SITE_FLOW.AREA IS
'地区';

COMMENT ON COLUMN JC_SITE_FLOW.SESSION_ID IS
'cookie信息';

/*==============================================================*/
/* Table: JC_SITE_MODEL                                         */
/*==============================================================*/
CREATE TABLE JC_SITE_MODEL  (
   MODEL_ID             NUMBER(11)                       NOT NULL,
   FIELD                VARCHAR2(50)                    NOT NULL,
   MODEL_LABEL          VARCHAR2(100)                   NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   UPLOAD_PATH          VARCHAR2(100),
   TEXT_SIZE            VARCHAR2(20),
   AREA_ROWS            VARCHAR2(3),
   AREA_COLS            VARCHAR2(3),
   HELP                 VARCHAR2(255),
   HELP_POSITION        VARCHAR2(1),
   DATA_TYPE            NUMBER(11)                        DEFAULT 1,
   IS_SINGLE            NUMBER(1)                       DEFAULT 1,
   CONSTRAINT PK_JC_SITE_MODEL PRIMARY KEY (MODEL_ID)
);

COMMENT ON TABLE JC_SITE_MODEL IS
'CMS站点信息模型表;';

COMMENT ON COLUMN JC_SITE_MODEL.FIELD IS
'字段';

COMMENT ON COLUMN JC_SITE_MODEL.MODEL_LABEL IS
'名称';

COMMENT ON COLUMN JC_SITE_MODEL.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_SITE_MODEL.UPLOAD_PATH IS
'上传路径';

COMMENT ON COLUMN JC_SITE_MODEL.TEXT_SIZE IS
'长度';

COMMENT ON COLUMN JC_SITE_MODEL.AREA_ROWS IS
'文本行数';

COMMENT ON COLUMN JC_SITE_MODEL.AREA_COLS IS
'文本列数';

COMMENT ON COLUMN JC_SITE_MODEL.HELP IS
'帮助信息';

COMMENT ON COLUMN JC_SITE_MODEL.HELP_POSITION IS
'帮助位置';

COMMENT ON COLUMN JC_SITE_MODEL.DATA_TYPE IS
'0:编辑器;1:文本框;2:文本区;3:图片;4:附件';

COMMENT ON COLUMN JC_SITE_MODEL.IS_SINGLE IS
'是否独占一行';

/*==============================================================*/
/* Table: JC_SITE_TXT                                           */
/*==============================================================*/
CREATE TABLE JC_SITE_TXT  (
   SITE_ID              NUMBER(11)                         NOT NULL,
   TXT_NAME             VARCHAR2(30)                    NOT NULL,
   TXT_VALUE            CLOB
);

COMMENT ON TABLE JC_SITE_TXT IS
'CMS站点文本表; ';

COMMENT ON COLUMN JC_SITE_TXT.TXT_NAME IS
'名称';

COMMENT ON COLUMN JC_SITE_TXT.TXT_VALUE IS
'值';

/*==============================================================*/
/* Table: JC_TASK                                               */
/*==============================================================*/
CREATE TABLE JC_TASK  (
   TASK_ID              NUMBER(11)                       NOT NULL,
   TASK_CODE            VARCHAR2(255),
   TASK_TYPE            NUMBER(1)                       DEFAULT 0 NOT NULL,
   TASK_NAME            VARCHAR2(255)                   NOT NULL,
   JOB_CLASS            VARCHAR2(255)                   NOT NULL,
   EXECYCLE             NUMBER(1)                       DEFAULT 1 NOT NULL,
   DAY_OF_MONTH         NUMBER(11),
   DAY_OF_WEEK          NUMBER(1),
   HOUR                 NUMBER(11),
   MINUTE               NUMBER(11),
   INTERVAL_HOUR        NUMBER(11),
   INTERVAL_MINUTE      NUMBER(11),
   TASK_INTERVAL_UNIT   NUMBER(1),
   CRON_EXPRESSION      VARCHAR2(255),
   IS_ENABLE            NUMBER(1)                       DEFAULT 1 NOT NULL,
   TASK_REMARK          VARCHAR2(255),
   SITE_ID              NUMBER(11)                         NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   CREATE_TIME          DATE                            NOT NULL,
   CONSTRAINT PK_JC_TASK PRIMARY KEY (TASK_ID)
);

COMMENT ON TABLE JC_TASK IS
'任务表;';

COMMENT ON COLUMN JC_TASK.TASK_CODE IS
'任务执行代码';

COMMENT ON COLUMN JC_TASK.TASK_TYPE IS
'任务类型(1首页静态化、2栏目页静态化、3内容页静态化、4采集、5分发)';

COMMENT ON COLUMN JC_TASK.TASK_NAME IS
'任务名称';

COMMENT ON COLUMN JC_TASK.JOB_CLASS IS
'任务类';

COMMENT ON COLUMN JC_TASK.EXECYCLE IS
'执行周期分类(1非表达式 2 cron表达式)';

COMMENT ON COLUMN JC_TASK.DAY_OF_MONTH IS
'每月的哪天';

COMMENT ON COLUMN JC_TASK.DAY_OF_WEEK IS
'周几';

COMMENT ON COLUMN JC_TASK.HOUR IS
'小时';

COMMENT ON COLUMN JC_TASK.MINUTE IS
'分钟';

COMMENT ON COLUMN JC_TASK.INTERVAL_HOUR IS
'间隔小时';

COMMENT ON COLUMN JC_TASK.INTERVAL_MINUTE IS
'间隔分钟';

COMMENT ON COLUMN JC_TASK.TASK_INTERVAL_UNIT IS
'1分钟、2小时、3日、4周、5月';

COMMENT ON COLUMN JC_TASK.CRON_EXPRESSION IS
'规则表达式';

COMMENT ON COLUMN JC_TASK.IS_ENABLE IS
'是否启用';

COMMENT ON COLUMN JC_TASK.TASK_REMARK IS
'任务说明';

COMMENT ON COLUMN JC_TASK.SITE_ID IS
'站点';

COMMENT ON COLUMN JC_TASK.USER_ID IS
'创建者';

COMMENT ON COLUMN JC_TASK.CREATE_TIME IS
'创建时间';

/*==============================================================*/
/* Table: JC_TASK_ATTR                                          */
/*==============================================================*/
CREATE TABLE JC_TASK_ATTR  (
   TASK_ID              NUMBER(11)                         NOT NULL,
   PARAM_NAME           VARCHAR2(30)                    NOT NULL,
   PARAM_VALUE          VARCHAR2(255)
);

COMMENT ON TABLE JC_TASK_ATTR IS
'任务参数表; ';

COMMENT ON COLUMN JC_TASK_ATTR.PARAM_NAME IS
'参数名称';

COMMENT ON COLUMN JC_TASK_ATTR.PARAM_VALUE IS
'参数值';

/*==============================================================*/
/* Table: JC_TOPIC                                              */
/*==============================================================*/
CREATE TABLE JC_TOPIC  (
   TOPIC_ID             NUMBER(11)                       NOT NULL,
   CHANNEL_ID           NUMBER(11),
   TOPIC_NAME           VARCHAR2(150)                   NOT NULL,
   SHORT_NAME           VARCHAR2(150),
   KEYWORDS             VARCHAR2(255),
   DESCRIPTION          VARCHAR2(255),
   TITLE_IMG            VARCHAR2(100),
   CONTENT_IMG          VARCHAR2(100),
   TPL_CONTENT          VARCHAR2(100),
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   IS_RECOMMEND         NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_TOPIC PRIMARY KEY (TOPIC_ID)
);

COMMENT ON TABLE JC_TOPIC IS
'CMS专题表;';

COMMENT ON COLUMN JC_TOPIC.TOPIC_NAME IS
'名称';

COMMENT ON COLUMN JC_TOPIC.SHORT_NAME IS
'简称';

COMMENT ON COLUMN JC_TOPIC.KEYWORDS IS
'关键字';

COMMENT ON COLUMN JC_TOPIC.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_TOPIC.TITLE_IMG IS
'标题图';

COMMENT ON COLUMN JC_TOPIC.CONTENT_IMG IS
'内容图';

COMMENT ON COLUMN JC_TOPIC.TPL_CONTENT IS
'专题模板';

COMMENT ON COLUMN JC_TOPIC.PRIORITY IS
'排列顺序';

COMMENT ON COLUMN JC_TOPIC.IS_RECOMMEND IS
'是否推??';

/*==============================================================*/
/* Table: JC_USER                                               */
/*==============================================================*/
CREATE TABLE JC_USER  (
   USER_ID              NUMBER(11)                         NOT NULL,
   GROUP_ID             NUMBER(11)                         NOT NULL,
   DEPART_ID            NUMBER(11),
   USERNAME             VARCHAR2(100)                   NOT NULL,
   EMAIL                VARCHAR2(100),
   REGISTER_TIME        DATE                            NOT NULL,
   REGISTER_IP          VARCHAR2(50)                   DEFAULT '127.0.0.1' NOT NULL,
   LAST_LOGIN_TIME      DATE                            NOT NULL,
   LAST_LOGIN_IP        VARCHAR2(50)                   DEFAULT '127.0.0.1' NOT NULL,
   LOGIN_COUNT          NUMBER(11)                        DEFAULT 0 NOT NULL,
   RANK                 NUMBER(11)                        DEFAULT 0 NOT NULL,
   UPLOAD_TOTAL         NUMBER(11)                        DEFAULT 0 NOT NULL,
   UPLOAD_SIZE          NUMBER(11)                        DEFAULT 0 NOT NULL,
   UPLOAD_DATE          DATE,
   IS_ADMIN             NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_VIEWONLY_ADMIN    NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_SELF_ADMIN        NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_DISABLED          NUMBER(1)                       DEFAULT 0 NOT NULL,
   FILE_TOTAL           NUMBER(11)                        DEFAULT 0 NOT NULL,
   GRAIN                NUMBER(11)                        DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_USER PRIMARY KEY (USER_ID)
);

COMMENT ON TABLE JC_USER IS
'CMS用户表;';

COMMENT ON COLUMN JC_USER.DEPART_ID IS
'部门';

COMMENT ON COLUMN JC_USER.USERNAME IS
'用户名';

COMMENT ON COLUMN JC_USER.EMAIL IS
'邮箱';

COMMENT ON COLUMN JC_USER.REGISTER_TIME IS
'注册时间';

COMMENT ON COLUMN JC_USER.REGISTER_IP IS
'注册IP';

COMMENT ON COLUMN JC_USER.LAST_LOGIN_TIME IS
'最后登录时间';

COMMENT ON COLUMN JC_USER.LAST_LOGIN_IP IS
'最后登录IP';

COMMENT ON COLUMN JC_USER.LOGIN_COUNT IS
'登录次数';

COMMENT ON COLUMN JC_USER.RANK IS
'管理员级别';

COMMENT ON COLUMN JC_USER.UPLOAD_TOTAL IS
'上传总大小';

COMMENT ON COLUMN JC_USER.UPLOAD_SIZE IS
'上传大小';

COMMENT ON COLUMN JC_USER.UPLOAD_DATE IS
'上传日期';

COMMENT ON COLUMN JC_USER.IS_ADMIN IS
'是否管理员';

COMMENT ON COLUMN JC_USER.IS_VIEWONLY_ADMIN IS
'是否只读管理员';

COMMENT ON COLUMN JC_USER.IS_SELF_ADMIN IS
'是否只管理自己的数据';

COMMENT ON COLUMN JC_USER.IS_DISABLED IS
'是否禁用';

COMMENT ON COLUMN JC_USER.FILE_TOTAL IS
'上传文库文档个数';

COMMENT ON COLUMN JC_USER.GRAIN IS
'文库财富值';

/*==============================================================*/
/* Table: JC_USER_COLLECTION                                    */
/*==============================================================*/
CREATE TABLE JC_USER_COLLECTION  (
   USER_ID              NUMBER(11)                        DEFAULT 0 NOT NULL,
   CONTENT_ID           NUMBER(11)                        DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_USER_COLLECTION PRIMARY KEY (USER_ID, CONTENT_ID)
);

COMMENT ON TABLE JC_USER_COLLECTION IS
'用户收藏关联表;';

COMMENT ON COLUMN JC_USER_COLLECTION.USER_ID IS
'用户id';

COMMENT ON COLUMN JC_USER_COLLECTION.CONTENT_ID IS
'内容id';

/*==============================================================*/
/* Table: JC_USER_EXT                                           */
/*==============================================================*/
CREATE TABLE JC_USER_EXT  (
   USER_ID              NUMBER(11)                         NOT NULL,
   REALNAME             VARCHAR2(100),
   GENDER               NUMBER(1),
   BIRTHDAY             DATE,
   INTRO                VARCHAR2(255),
   COMEFROM             VARCHAR2(150),
   QQ                   VARCHAR2(100),
   MSN                  VARCHAR2(100),
   PHONE                VARCHAR2(50),
   MOBILE               VARCHAR2(50),
   USER_IMG             VARCHAR2(255),
   USER_SIGNATURE       VARCHAR2(255),
   CONSTRAINT PK_JC_USER_EXT PRIMARY KEY (USER_ID)
);

COMMENT ON TABLE JC_USER_EXT IS
'CMS用户扩展信息表;';

COMMENT ON COLUMN JC_USER_EXT.REALNAME IS
'真实姓名';

COMMENT ON COLUMN JC_USER_EXT.GENDER IS
'性别';

COMMENT ON COLUMN JC_USER_EXT.BIRTHDAY IS
'出生日期';

COMMENT ON COLUMN JC_USER_EXT.INTRO IS
'个人介绍';

COMMENT ON COLUMN JC_USER_EXT.COMEFROM IS
'来自';

COMMENT ON COLUMN JC_USER_EXT.QQ IS
'QQ';

COMMENT ON COLUMN JC_USER_EXT.MSN IS
'MSN';

COMMENT ON COLUMN JC_USER_EXT.PHONE IS
'电话';

COMMENT ON COLUMN JC_USER_EXT.MOBILE IS
'手机';

COMMENT ON COLUMN JC_USER_EXT.USER_IMG IS
'用户头像';

COMMENT ON COLUMN JC_USER_EXT.USER_SIGNATURE IS
'用户个性签名';

/*==============================================================*/
/* Table: JC_USER_RESUME                                        */
/*==============================================================*/
CREATE TABLE JC_USER_RESUME  (
   USER_ID              NUMBER(11)                         NOT NULL,
   RESUME_NAME          VARCHAR2(255)                   NOT NULL,
   TARGET_WORKNATURE    VARCHAR2(255),
   TARGET_WORKPLACE     VARCHAR2(255),
   TARGET_CATEGORY      VARCHAR2(255),
   TARGET_SALARY        VARCHAR2(255),
   EDU_SCHOOL           VARCHAR2(255),
   EDU_GRADUATION       DATE,
   EDU_BACK             VARCHAR2(255),
   EDU_DISCIPLINE       VARCHAR2(255),
   RECENT_COMPANY       VARCHAR2(500),
   COMPANY_INDUSTRY     VARCHAR2(255),
   COMPANY_SCALE        VARCHAR2(255),
   JOB_NAME             VARCHAR2(255),
   JOB_CATEGORY         VARCHAR2(255),
   JOB_START            DATE,
   SUBORDINATES         VARCHAR2(255),
   JOB_DESCRIPTION      CLOB,
   SELF_EVALUATION      VARCHAR2(2000),
   CONSTRAINT PK_JC_USER_RESUME PRIMARY KEY (USER_ID)
);

COMMENT ON TABLE JC_USER_RESUME IS
'用户简历;';

COMMENT ON COLUMN JC_USER_RESUME.RESUME_NAME IS
'简历名称';

COMMENT ON COLUMN JC_USER_RESUME.TARGET_WORKNATURE IS
'期望工作性质';

COMMENT ON COLUMN JC_USER_RESUME.TARGET_WORKPLACE IS
'期望工作地点';

COMMENT ON COLUMN JC_USER_RESUME.TARGET_CATEGORY IS
'期望职位类别';

COMMENT ON COLUMN JC_USER_RESUME.TARGET_SALARY IS
'期望月薪';

COMMENT ON COLUMN JC_USER_RESUME.EDU_SCHOOL IS
'毕业学校';

COMMENT ON COLUMN JC_USER_RESUME.EDU_GRADUATION IS
'毕业时间';

COMMENT ON COLUMN JC_USER_RESUME.EDU_BACK IS
'学历';

COMMENT ON COLUMN JC_USER_RESUME.EDU_DISCIPLINE IS
'专业';

COMMENT ON COLUMN JC_USER_RESUME.RECENT_COMPANY IS
'最近工作公司名称';

COMMENT ON COLUMN JC_USER_RESUME.COMPANY_INDUSTRY IS
'最近公司所属行业';

COMMENT ON COLUMN JC_USER_RESUME.COMPANY_SCALE IS
'公司规模';

COMMENT ON COLUMN JC_USER_RESUME.JOB_NAME IS
'职位名称';

COMMENT ON COLUMN JC_USER_RESUME.JOB_CATEGORY IS
'职位类别';

COMMENT ON COLUMN JC_USER_RESUME.JOB_START IS
'工作起始时间';

COMMENT ON COLUMN JC_USER_RESUME.SUBORDINATES IS
'下属人数';

COMMENT ON COLUMN JC_USER_RESUME.JOB_DESCRIPTION IS
'工作描述';

COMMENT ON COLUMN JC_USER_RESUME.SELF_EVALUATION IS
'自我评价';

/*==============================================================*/
/* Table: JC_USER_ROLE                                          */
/*==============================================================*/
CREATE TABLE JC_USER_ROLE  (
   ROLE_ID              NUMBER(11)                         NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_USER_ROLE PRIMARY KEY (ROLE_ID, USER_ID)
);

COMMENT ON TABLE JC_USER_ROLE IS
'CMS用户角色关联表;';

/*==============================================================*/
/* Table: JC_USER_SITE                                          */
/*==============================================================*/
CREATE TABLE JC_USER_SITE  (
   USERSITE_ID          NUMBER(11)                       NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   CHECK_STEP           NUMBER(1)                       DEFAULT 1 NOT NULL,
   IS_ALL_CHANNEL       NUMBER(1)                       DEFAULT 1 NOT NULL,
   CONSTRAINT PK_JC_USER_SITE PRIMARY KEY (USERSITE_ID)
);

COMMENT ON TABLE JC_USER_SITE IS
'CMS管理员站点表;';

COMMENT ON COLUMN JC_USER_SITE.CHECK_STEP IS
'审核级别';

COMMENT ON COLUMN JC_USER_SITE.IS_ALL_CHANNEL IS
'是否拥有所有栏目的权限';

/*==============================================================*/
/* Table: JC_VOTE_ITEM                                          */
/*==============================================================*/
CREATE TABLE JC_VOTE_ITEM  (
   VOTEITEM_ID          NUMBER(11)                       NOT NULL,
   VOTETOPIC_ID         NUMBER(11)                         NOT NULL,
   TITLE                VARCHAR2(255)                   NOT NULL,
   VOTE_COUNT           NUMBER(11)                        DEFAULT 0 NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   SUBTOPIC_ID          NUMBER(11),
   CONSTRAINT PK_JC_VOTE_ITEM PRIMARY KEY (VOTEITEM_ID)
);

COMMENT ON TABLE JC_VOTE_ITEM IS
'CMS投票项;';

COMMENT ON COLUMN JC_VOTE_ITEM.TITLE IS
'标题';

COMMENT ON COLUMN JC_VOTE_ITEM.VOTE_COUNT IS
'投票数量';

COMMENT ON COLUMN JC_VOTE_ITEM.PRIORITY IS
'排列顺序';

/*==============================================================*/
/* Table: JC_VOTE_RECORD                                        */
/*==============================================================*/
CREATE TABLE JC_VOTE_RECORD  (
   VOTERECORED_ID       NUMBER(11)                       NOT NULL,
   USER_ID              NUMBER(11),
   VOTETOPIC_ID         NUMBER(11)                         NOT NULL,
   VOTE_TIME            DATE                            NOT NULL,
   VOTE_IP              VARCHAR2(50)                    NOT NULL,
   VOTE_COOKIE          VARCHAR2(32)                    NOT NULL,
   CONSTRAINT PK_JC_VOTE_RECORD PRIMARY KEY (VOTERECORED_ID)
);

COMMENT ON TABLE JC_VOTE_RECORD IS
'CMS投票记录;';

COMMENT ON COLUMN JC_VOTE_RECORD.VOTE_TIME IS
'投票时间';

COMMENT ON COLUMN JC_VOTE_RECORD.VOTE_IP IS
'投票IP';

COMMENT ON COLUMN JC_VOTE_RECORD.VOTE_COOKIE IS
'投票COOKIE';

/*==============================================================*/
/* Table: JC_VOTE_REPLY                                         */
/*==============================================================*/
CREATE TABLE JC_VOTE_REPLY  (
   VOTEREPLY_ID         NUMBER(11)                       NOT NULL,
   REPLY                CLOB,
   SUBTOPIC_ID          NUMBER(11),
   CONSTRAINT PK_JC_VOTE_REPLY PRIMARY KEY (VOTEREPLY_ID)
);

COMMENT ON TABLE JC_VOTE_REPLY IS
'投票文本题目回复表;';

COMMENT ON COLUMN JC_VOTE_REPLY.REPLY IS
'回复内容';

/*==============================================================*/
/* Table: JC_VOTE_SUBTOPIC                                      */
/*==============================================================*/
CREATE TABLE JC_VOTE_SUBTOPIC  (
   SUBTOPIC_ID          NUMBER(11)                       NOT NULL,
   TITLE                VARCHAR2(255)                   NOT NULL,
   VOTETOPIC_ID         NUMBER(11)                        DEFAULT 0 NOT NULL,
   SUBTOPIC_TYPE        NUMBER(11)                        DEFAULT 1 NOT NULL,
   PRIORITY             NUMBER(11),
   CONSTRAINT PK_JC_VOTE_SUBTOPIC PRIMARY KEY (SUBTOPIC_ID)
);

COMMENT ON TABLE JC_VOTE_SUBTOPIC IS
'投票子题目;';

COMMENT ON COLUMN JC_VOTE_SUBTOPIC.TITLE IS
'标题';

COMMENT ON COLUMN JC_VOTE_SUBTOPIC.VOTETOPIC_ID IS
'投票（调查）';

COMMENT ON COLUMN JC_VOTE_SUBTOPIC.SUBTOPIC_TYPE IS
'类型（1单选，2多选，3文本）';

/*==============================================================*/
/* Table: JC_VOTE_TOPIC                                         */
/*==============================================================*/
CREATE TABLE JC_VOTE_TOPIC  (
   VOTETOPIC_ID         NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   TITLE                VARCHAR2(255)                   NOT NULL,
   DESCRIPTION          VARCHAR2(255),
   START_TIME           DATE,
   END_TIME             DATE,
   REPEATE_HOUR         NUMBER(11),
   TOTAL_COUNT          NUMBER(11)                        DEFAULT 0 NOT NULL,
   MULTI_SELECT         NUMBER(11)                        DEFAULT 1 NOT NULL,
   IS_RESTRICT_MEMBER   NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_RESTRICT_IP       NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_RESTRICT_COOKIE   NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_DISABLED          NUMBER(1)                       DEFAULT 0 NOT NULL,
   IS_DEF               NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_VOTE_TOPIC PRIMARY KEY (VOTETOPIC_ID)
);

COMMENT ON TABLE JC_VOTE_TOPIC IS
'CMS投票主题;';

COMMENT ON COLUMN JC_VOTE_TOPIC.TITLE IS
'标题';

COMMENT ON COLUMN JC_VOTE_TOPIC.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_VOTE_TOPIC.START_TIME IS
'开始时间';

COMMENT ON COLUMN JC_VOTE_TOPIC.END_TIME IS
'结束时间';

COMMENT ON COLUMN JC_VOTE_TOPIC.REPEATE_HOUR IS
'重复投票限制时间，单位小时，为空不允许重复投票';

COMMENT ON COLUMN JC_VOTE_TOPIC.TOTAL_COUNT IS
'总投票数';

COMMENT ON COLUMN JC_VOTE_TOPIC.MULTI_SELECT IS
'最多可以选择几项';

COMMENT ON COLUMN JC_VOTE_TOPIC.IS_RESTRICT_MEMBER IS
'是否限制会员';

COMMENT ON COLUMN JC_VOTE_TOPIC.IS_RESTRICT_IP IS
'是否限制IP';

COMMENT ON COLUMN JC_VOTE_TOPIC.IS_RESTRICT_COOKIE IS
'是否限制COOKIE';

COMMENT ON COLUMN JC_VOTE_TOPIC.IS_DISABLED IS
'是否禁用';

COMMENT ON COLUMN JC_VOTE_TOPIC.IS_DEF IS
'是否默认主题';

/*==============================================================*/
/* Table: JC_WORKFLOW                                           */
/*==============================================================*/
CREATE TABLE JC_WORKFLOW  (
   WORKFLOW_ID          NUMBER(11)                       NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   NAME                 VARCHAR2(255)                   NOT NULL,
   DESCRIPTION          VARCHAR2(255),
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   IS_DISABLED          NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_WORKFLOW PRIMARY KEY (WORKFLOW_ID)
);

COMMENT ON TABLE JC_WORKFLOW IS
'工作流;';

COMMENT ON COLUMN JC_WORKFLOW.SITE_ID IS
'站点';

COMMENT ON COLUMN JC_WORKFLOW.NAME IS
'名称';

COMMENT ON COLUMN JC_WORKFLOW.DESCRIPTION IS
'描述';

COMMENT ON COLUMN JC_WORKFLOW.PRIORITY IS
'排序';

COMMENT ON COLUMN JC_WORKFLOW.IS_DISABLED IS
'是否禁用';

/*==============================================================*/
/* Table: JC_WORKFLOW_EVENT                                     */
/*==============================================================*/
CREATE TABLE JC_WORKFLOW_EVENT  (
   EVENT_ID             NUMBER(11)                       NOT NULL,
   WORKFLOW_ID          NUMBER(11)                         NOT NULL,
   DATE_ID              NUMBER(11)                         NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   START_TIME           DATE                            NOT NULL,
   END_TIME             DATE,
   NEXT_STEP            NUMBER(11)                        DEFAULT 0 NOT NULL,
   DATE_TYPE            NUMBER(11)                        DEFAULT 0 NOT NULL,
   IS_FINISH            NUMBER(1)                       DEFAULT 0 NOT NULL,
   PASS_NUM             NUMBER(11),
   CONSTRAINT PK_JC_WORKFLOW_EVENT PRIMARY KEY (EVENT_ID)
);

COMMENT ON TABLE JC_WORKFLOW_EVENT IS
'工作流轨迹;';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.WORKFLOW_ID IS
'工作流';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.DATE_ID IS
'数据标识';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.USER_ID IS
'发起人';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.START_TIME IS
'开始时间';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.END_TIME IS
'结束时间';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.NEXT_STEP IS
'下个步骤';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.DATE_TYPE IS
'数据类型(0默认内容)';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.IS_FINISH IS
'是否结束';

COMMENT ON COLUMN JC_WORKFLOW_EVENT.PASS_NUM IS
'会签本节点通过人数';

/*==============================================================*/
/* Index: FK_EVENT_WORKFLOW                                     */
/*==============================================================*/
CREATE INDEX FK_EVENT_WORKFLOW ON JC_WORKFLOW_EVENT (
   WORKFLOW_ID ASC
);

/*==============================================================*/
/* Table: JC_WORKFLOW_EVENT_USER                                */
/*==============================================================*/
CREATE TABLE JC_WORKFLOW_EVENT_USER  (
   EVENT_USER_ID        NUMBER(11)                       NOT NULL,
   EVENT_ID             NUMBER(11)                         NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   CONSTRAINT PK_JC_WORKFLOW_EVENT_USER PRIMARY KEY (EVENT_USER_ID)
);

COMMENT ON TABLE JC_WORKFLOW_EVENT_USER IS
'工作流轨迹用户表;';

COMMENT ON COLUMN JC_WORKFLOW_EVENT_USER.EVENT_ID IS
'工作流转id';

COMMENT ON COLUMN JC_WORKFLOW_EVENT_USER.USER_ID IS
'流转用户';

/*==============================================================*/
/* Table: JC_WORKFLOW_NODE                                      */
/*==============================================================*/
CREATE TABLE JC_WORKFLOW_NODE  (
   WORKFLOW_ID          NUMBER(11)                         NOT NULL,
   ROLE_ID              NUMBER(11)                         NOT NULL,
   PRIORITY             NUMBER(11)                        DEFAULT 10 NOT NULL,
   IS_COUNTERSIGN       NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_WORKFLOW_NODE PRIMARY KEY (WORKFLOW_ID, PRIORITY)
);

COMMENT ON TABLE JC_WORKFLOW_NODE IS
'工作流节点;';

COMMENT ON COLUMN JC_WORKFLOW_NODE.WORKFLOW_ID IS
'工作流';

COMMENT ON COLUMN JC_WORKFLOW_NODE.ROLE_ID IS
'角色';

COMMENT ON COLUMN JC_WORKFLOW_NODE.PRIORITY IS
'排序';

COMMENT ON COLUMN JC_WORKFLOW_NODE.IS_COUNTERSIGN IS
'1 会签 0普通流转';

/*==============================================================*/
/* Table: JC_WORKFLOW_RECORD                                    */
/*==============================================================*/
CREATE TABLE JC_WORKFLOW_RECORD  (
   RECORD_ID            NUMBER(11)                       NOT NULL,
   USER_ID              NUMBER(11)                         NOT NULL,
   SITE_ID              NUMBER(11)                         NOT NULL,
   EVENT_ID             NUMBER(11)                        DEFAULT 0 NOT NULL,
   RECORD_TIME          DATE                            NOT NULL,
   OPINION              VARCHAR2(255),
   TYPE                 NUMBER(11)                        DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JC_WORKFLOW_RECORD PRIMARY KEY (RECORD_ID)
);

COMMENT ON TABLE JC_WORKFLOW_RECORD IS
'工作流日志记录;';

COMMENT ON COLUMN JC_WORKFLOW_RECORD.USER_ID IS
'操作人';

COMMENT ON COLUMN JC_WORKFLOW_RECORD.SITE_ID IS
'站点';

COMMENT ON COLUMN JC_WORKFLOW_RECORD.EVENT_ID IS
'轨迹';

COMMENT ON COLUMN JC_WORKFLOW_RECORD.RECORD_TIME IS
'创建时间';

COMMENT ON COLUMN JC_WORKFLOW_RECORD.OPINION IS
'意见';

COMMENT ON COLUMN JC_WORKFLOW_RECORD.TYPE IS
'类型(1:通过  2退回 3保持)';

/*==============================================================*/
/* Table: JO_AUTHENTICATION                                     */
/*==============================================================*/
CREATE TABLE JO_AUTHENTICATION  (
   AUTHENTICATION_ID    CHAR(32)                        NOT NULL,
   USERID               NUMBER(11)                         NOT NULL,
   USERNAME             VARCHAR2(100)                   NOT NULL,
   EMAIL                VARCHAR2(100),
   LOGIN_TIME           DATE                            NOT NULL,
   LOGIN_IP             VARCHAR2(50)                    NOT NULL,
   UPDATE_TIME          DATE                            NOT NULL,
   CONSTRAINT PK_JO_AUTHENTICATION PRIMARY KEY (AUTHENTICATION_ID)
);

COMMENT ON TABLE JO_AUTHENTICATION IS
'认证信息表;';

COMMENT ON COLUMN JO_AUTHENTICATION.AUTHENTICATION_ID IS
'认证ID';

COMMENT ON COLUMN JO_AUTHENTICATION.USERID IS
'用户ID';

COMMENT ON COLUMN JO_AUTHENTICATION.USERNAME IS
'用户名';

COMMENT ON COLUMN JO_AUTHENTICATION.EMAIL IS
'邮箱';

COMMENT ON COLUMN JO_AUTHENTICATION.LOGIN_TIME IS
'登录时间';

COMMENT ON COLUMN JO_AUTHENTICATION.LOGIN_IP IS
'登录ip';

COMMENT ON COLUMN JO_AUTHENTICATION.UPDATE_TIME IS
'更新时间';

/*==============================================================*/
/* Table: JO_CONFIG                                             */
/*==============================================================*/
CREATE TABLE JO_CONFIG  (
   CFG_KEY              VARCHAR2(50)                    NOT NULL,
   CFG_VALUE            VARCHAR2(255),
   CONSTRAINT PK_JO_CONFIG PRIMARY KEY (CFG_KEY)
);

COMMENT ON TABLE JO_CONFIG IS
'配置表;';

COMMENT ON COLUMN JO_CONFIG.CFG_KEY IS
'配置KEY';

COMMENT ON COLUMN JO_CONFIG.CFG_VALUE IS
'配置VALUE';

/*==============================================================*/
/* Table: JO_FTP                                                */
/*==============================================================*/
CREATE TABLE JO_FTP  (
   FTP_ID               NUMBER(11)                       NOT NULL,
   FTP_NAME             VARCHAR2(100)                   NOT NULL,
   IP                   VARCHAR2(50)                    NOT NULL,
   PORT                 NUMBER(11)                        DEFAULT 21 NOT NULL,
   USERNAME             VARCHAR2(100),
   PASSWORD             VARCHAR2(100),
   ENCODING             VARCHAR2(20)                   DEFAULT 'UTF-8' NOT NULL,
   TIMEOUT              NUMBER(11),
   FTP_PATH             VARCHAR2(255),
   URL                  VARCHAR2(255)                   NOT NULL,
   CONSTRAINT PK_JO_FTP PRIMARY KEY (FTP_ID)
);

COMMENT ON TABLE JO_FTP IS
'FTP表;';

COMMENT ON COLUMN JO_FTP.FTP_NAME IS
'名称';

COMMENT ON COLUMN JO_FTP.IP IS
'IP';

COMMENT ON COLUMN JO_FTP.PORT IS
'端口号';

COMMENT ON COLUMN JO_FTP.USERNAME IS
'登录名';

COMMENT ON COLUMN JO_FTP.PASSWORD IS
'登陆密码';

COMMENT ON COLUMN JO_FTP.ENCODING IS
'编码';

COMMENT ON COLUMN JO_FTP.TIMEOUT IS
'超时时间';

COMMENT ON COLUMN JO_FTP.FTP_PATH IS
'路径';

COMMENT ON COLUMN JO_FTP.URL IS
'访问URL';

/*==============================================================*/
/* Table: JO_TEMPLATE                                           */
/*==============================================================*/
CREATE TABLE JO_TEMPLATE  (
   TPL_NAME             VARCHAR2(150)                   NOT NULL,
   TPL_SOURCE           CLOB,
   LAST_MODIFIED        NUMBER(11)                         NOT NULL,
   IS_DIRECTORY         NUMBER(1)                       DEFAULT 0 NOT NULL,
   CONSTRAINT PK_JO_TEMPLATE PRIMARY KEY (TPL_NAME)
);

COMMENT ON TABLE JO_TEMPLATE IS
'模板表;';

COMMENT ON COLUMN JO_TEMPLATE.TPL_NAME IS
'模板名称';

COMMENT ON COLUMN JO_TEMPLATE.TPL_SOURCE IS
'模板内容';

COMMENT ON COLUMN JO_TEMPLATE.LAST_MODIFIED IS
'最后修改时间';

COMMENT ON COLUMN JO_TEMPLATE.IS_DIRECTORY IS
'是否目录';

/*==============================================================*/
/* Table: JO_UPLOAD                                             */
/*==============================================================*/
CREATE TABLE JO_UPLOAD  (
   FILENAME             VARCHAR2(150)                   NOT NULL,
   LENGTH               NUMBER(20)                         NOT NULL,
   LAST_MODIFIED        NUMBER(20)                         NOT NULL,
   CONTENT              BLOB                            NOT NULL,
   CONSTRAINT PK_JO_UPLOAD PRIMARY KEY (FILENAME)
);

COMMENT ON TABLE JO_UPLOAD IS
'上传附件表;';

COMMENT ON COLUMN JO_UPLOAD.FILENAME IS
'文件名';

COMMENT ON COLUMN JO_UPLOAD.LENGTH IS
'文件大小(字节)';

COMMENT ON COLUMN JO_UPLOAD.LAST_MODIFIED IS
'最后修改时间';

COMMENT ON COLUMN JO_UPLOAD.CONTENT IS
'内容';

/*==============================================================*/
/* Table: JO_USER                                               */
/*==============================================================*/
CREATE TABLE JO_USER  (
   USER_ID              NUMBER(11)                       NOT NULL,
   USERNAME             VARCHAR2(100)                   NOT NULL,
   EMAIL                VARCHAR2(100),
   PASSWORD             CHAR(32)                        NOT NULL,
   REGISTER_TIME        DATE                            NOT NULL,
   REGISTER_IP          VARCHAR2(50)                   DEFAULT '127.0.0.1' NOT NULL,
   LAST_LOGIN_TIME      DATE                            NOT NULL,
   LAST_LOGIN_IP        VARCHAR2(50)                   DEFAULT '127.0.0.1' NOT NULL,
   LOGIN_COUNT          NUMBER(11)                        DEFAULT 0 NOT NULL,
   RESET_KEY            CHAR(32),
   RESET_PWD            VARCHAR2(10),
   ERROR_TIME           DATE,
   ERROR_COUNT          NUMBER(11)                        DEFAULT 0 NOT NULL,
   ERROR_IP             VARCHAR2(50),
   ACTIVATION           NUMBER(1)                       DEFAULT 1 NOT NULL,
   ACTIVATION_CODE      CHAR(32),
   CONSTRAINT PK_JO_USER PRIMARY KEY (USER_ID)
);

COMMENT ON TABLE JO_USER IS
'用户表;';

COMMENT ON COLUMN JO_USER.USER_ID IS
'用户ID';

COMMENT ON COLUMN JO_USER.USERNAME IS
'用户名';

COMMENT ON COLUMN JO_USER.EMAIL IS
'电子邮箱';

COMMENT ON COLUMN JO_USER.PASSWORD IS
'密码';

COMMENT ON COLUMN JO_USER.REGISTER_TIME IS
'注册时间';

COMMENT ON COLUMN JO_USER.REGISTER_IP IS
'注册IP';

COMMENT ON COLUMN JO_USER.LAST_LOGIN_TIME IS
'最后登录时间';

COMMENT ON COLUMN JO_USER.LAST_LOGIN_IP IS
'最后登录IP';

COMMENT ON COLUMN JO_USER.LOGIN_COUNT IS
'登录次数';

COMMENT ON COLUMN JO_USER.RESET_KEY IS
'重置密码KEY';

COMMENT ON COLUMN JO_USER.RESET_PWD IS
'重置密码VALUE';

COMMENT ON COLUMN JO_USER.ERROR_TIME IS
'登录错误时间';

COMMENT ON COLUMN JO_USER.ERROR_COUNT IS
'登录错误次数';

COMMENT ON COLUMN JO_USER.ERROR_IP IS
'登录错误IP';

COMMENT ON COLUMN JO_USER.ACTIVATION IS
'激活状态';

COMMENT ON COLUMN JO_USER.ACTIVATION_CODE IS
'激活码';
CREATE TABLE jc_origin  (
  origin_id NUMBER(11) NOT NULL ,
  origin_name VARCHAR2(255) NOT NULL ,
  ref_count NUMBER(11) default 0 NOT NULL 
);
CREATE SEQUENCE s_jc_origin start with 7;
COMMENT ON TABLE jc_origin IS
'来源';
COMMENT ON COLUMN jc_origin.origin_name IS
'来源名称';
COMMENT ON COLUMN jc_origin.ref_count IS
'来源文章总数';

CREATE TABLE jc_search_words  (
  word_id NUMBER(11) NOT NULL ,
  name varchar2(255) NOT NULL  ,
  hit_count NUMBER(11) default 0 NOT NULL ,
  priority NUMBER(11)  default 10 NOT NULL,
  name_initial varchar2(500) NOT NULL 
);
CREATE SEQUENCE s_jc_search_words start with 42;
COMMENT ON TABLE jc_search_words IS
'搜索热词';
COMMENT ON COLUMN jc_search_words.name IS
'搜索词汇';
COMMENT ON COLUMN jc_search_words.hit_count IS
'搜索次数';
COMMENT ON COLUMN jc_search_words.priority IS
'优先级';
COMMENT ON COLUMN jc_search_words.name_initial IS
'拼音首字母';

CREATE TABLE jc_plug  (
  plug_id NUMBER(11) NOT NULL ,
  name varchar2(255) NOT NULL,
  path varchar2(255) NOT NULL,
  description varchar2(2000) ,
  author varchar2(255) ,
  upload_time date NOT NULL ,
  install_time date  ,
  uninstall_time date ,
  file_conflict NUMBER(1) default 0 NOT NULL  ,
  is_used NUMBER(1) default 0 NOT NULL ,
  plug_perms varchar2(2000)  
);
CREATE SEQUENCE s_jc_plug start with 1;
COMMENT ON TABLE jc_plug IS
'插件';
COMMENT ON COLUMN jc_plug.name IS
'插件名称';
COMMENT ON COLUMN jc_plug.path IS
'文件路径';
COMMENT ON COLUMN jc_plug.description IS
'描述';
COMMENT ON COLUMN jc_plug.author IS
'作者';
COMMENT ON COLUMN jc_plug.upload_time IS
'上传时间';
COMMENT ON COLUMN jc_plug.install_time IS
'安装时间';
COMMENT ON COLUMN jc_plug.uninstall_time IS
'卸载时间';
COMMENT ON COLUMN jc_plug.file_conflict IS
'包含文件是否冲突';
COMMENT ON COLUMN jc_plug.is_used IS
'使用状态(0未使用,1使用中)';
COMMENT ON COLUMN jc_plug.plug_perms IS
'插件权限（,分隔各个权限配置）';
alter table JC_PLUG add constraint PK_JC_PLUG primary key (PLUG_ID);


alter table jc_site add  parent_id NUMBER(11);
alter table jc_site add  tpl_index varchar2(255) ;
alter table jc_site add  access_path varchar2(50);
COMMENT ON COLUMN jc_site.parent_id IS '父站点id';
COMMENT ON COLUMN jc_site.tpl_index IS '首页模板';
COMMENT ON COLUMN jc_site.access_path IS '访问路径';
ALTER TABLE  jc_site  ADD CONSTRAINT fk_jc_site_parent FOREIGN KEY (parent_id) REFERENCES jc_site (site_id);

alter table jc_config add  view_only_checked NUMBER(1)  default 0 NOT NULL  ;
alter table jc_config add  inside_site NUMBER(1) default  0 NOT NULL  ;

COMMENT ON COLUMN jc_config.view_only_checked IS '只有终审才能浏览内容页';
COMMENT ON COLUMN jc_config.inside_site IS '内网（通过站点路径区分站点）';

alter table jc_acquisition_temp rename column percent to finish_percent;

CREATE TABLE jc_site_refer (
  site_id NUMBER(11) NOT NULL ,
  from_site_id NUMBER(11) NOT NULL 
);
alter table jc_site_refer add constraint PK_JC_SITE_REFER primary key (site_id,from_site_id);
ALTER TABLE jc_site_refer ADD CONSTRAINT fk_jc_site_from FOREIGN KEY (from_site_id) REFERENCES jc_site (site_id);
ALTER TABLE jc_site_refer ADD CONSTRAINT fk_jc_site_to FOREIGN KEY (site_id) REFERENCES jc_site (site_id);
COMMENT ON TABLE jc_site_refer IS '站点转载权限';

CREATE TABLE jc_config_item (
  modelitem_id NUMBER(11) NOT NULL,
  config_id NUMBER(11) NOT NULL,
  field varchar2(50) NOT NULL,
  item_label varchar2(100) NOT NULL ,
  priority NUMBER(11) default 70 NOT NULL  ,
  def_value varchar2(255) default NULL ,
  opt_value varchar2(255) default NULL ,
  text_size varchar2(20) default NULL ,
  area_rows varchar2(3) default NULL ,
  area_cols varchar2(3) default NULL ,
  help varchar2(255) default NULL ,
  help_position varchar(1) default NULL ,
  data_type NUMBER(11) default 1 NOT NULL  ,
  is_required NUMBER(1) default 0 NOT NULL ,
  category NUMBER(11) default 1 NOT NULL 
);
alter table jc_config_item add constraint PK_JC_CONFIG_ITEM primary key (modelitem_id);
ALTER TABLE jc_config_item ADD CONSTRAINT fk_jc_item_config FOREIGN KEY (config_id) REFERENCES jc_config (config_id);
CREATE SEQUENCE S_JC_CONFIG_ITEM start with 1;
COMMENT ON TABLE jc_config_item IS 'CMS配置模型项表';
COMMENT ON COLUMN jc_config_item.field IS '字段';
COMMENT ON COLUMN jc_config_item.item_label IS '名称';
COMMENT ON COLUMN jc_config_item.priority IS '排序';
COMMENT ON COLUMN jc_config_item.def_value IS '默认值';
COMMENT ON COLUMN jc_config_item.opt_value IS '可选项';
COMMENT ON COLUMN jc_config_item.text_size IS '长度';
COMMENT ON COLUMN jc_config_item.area_rows IS '文本行数';
COMMENT ON COLUMN jc_config_item.area_cols IS '文本列数';
COMMENT ON COLUMN jc_config_item.help IS '帮助信息';
COMMENT ON COLUMN jc_config_item.data_type IS '数据类型 "1":"字符串文本","2":"整型文本","3":"浮点型文本","4":"文本区","5":"日期","6":"下拉列表","7":"复选框","8":"单选框"';
COMMENT ON COLUMN jc_config_item.is_required IS '是否必填';
COMMENT ON COLUMN jc_config_item.category IS '模型项目所属分类（1会员注册模型）';

CREATE TABLE jc_user_attr (
  user_id NUMBER(11) NOT NULL,
  attr_name varchar2(255) NOT NULL,
  attr_value varchar2(255) default NULL
);
ALTER TABLE jc_user_attr ADD CONSTRAINT fk_jc_attr_user FOREIGN KEY (user_id) REFERENCES jc_user (user_id);
COMMENT ON TABLE jc_user_attr IS '用户属性表';

CREATE TABLE jc_user_menu (
  menu_id NUMBER(11) NOT NULL ,
  menu_name varchar2(255) NOT NULL,
  menu_url varchar2(255) NOT NULL,
  priority NUMBER(11) default 10 NOT NULL,
  user_id NUMBER(11) NOT NULL
);
alter table jc_user_menu add constraint PK_JC_USER_MENU primary key (menu_id);
ALTER TABLE jc_user_menu ADD CONSTRAINT fk_jc_menu_user FOREIGN KEY (user_id) REFERENCES jc_user (user_id);
CREATE SEQUENCE S_JC_USER_MENU start with 1;
COMMENT ON TABLE jc_user_menu IS '用户常用菜单';
COMMENT ON COLUMN jc_user_menu.menu_name IS '菜单名称';
COMMENT ON COLUMN jc_user_menu.menu_url IS '菜单地址';

CREATE TABLE jc_site_access (
  access_id NUMBER(11) NOT NULL,
  session_id varchar2(32)  NOT NULL ,
  site_id NUMBER(11) NOT NULL ,
  access_time TIMESTAMP(6) NOT NULL  ,
  access_date date NOT NULL  ,
  ip varchar2(50) NOT NULL ,
  area varchar2(50) ,
  access_source varchar2(255)  ,
  external_link varchar2(255) default NULL ,
   engine varchar2(50) default NULL ,
  entry_page varchar2(255)  ,
  last_stop_page varchar2(255)  ,
  visit_second NUMBER(11)  ,
  visit_page_count NUMBER(11) ,
  operating_system varchar2(50)  ,
  browser varchar2(50)  ,
  keyword varchar2(255)  
);
alter table jc_site_access add constraint PK_JC_SITE_ACCESS primary key (access_id);
ALTER TABLE jc_site_access ADD CONSTRAINT fk_jc_access_site FOREIGN KEY (site_id) REFERENCES jc_site (site_id);
CREATE SEQUENCE S_JC_SITE_ACCESS start with 7;
COMMENT ON TABLE jc_site_access IS '站点访问表';
COMMENT ON COLUMN jc_site_access.site_id IS '站点id';
COMMENT ON COLUMN jc_site_access.access_time IS '访问时间';
COMMENT ON COLUMN jc_site_access.access_date IS '访问日期';
COMMENT ON COLUMN jc_site_access.ip IS '访问ip';
COMMENT ON COLUMN jc_site_access.area IS '访问地区';
COMMENT ON COLUMN jc_site_access.access_source IS '访问来源';
COMMENT ON COLUMN jc_site_access.external_link IS '外部链接网址';
COMMENT ON COLUMN jc_site_access.engine IS '搜索引擎';
COMMENT ON COLUMN jc_site_access.entry_page IS '入口页面';
COMMENT ON COLUMN jc_site_access.last_stop_page IS '最后停留页面';
COMMENT ON COLUMN jc_site_access.visit_second IS '访问时长(秒)';
COMMENT ON COLUMN jc_site_access.visit_page_count IS '访问页面数';
COMMENT ON COLUMN jc_site_access.operating_system IS '操作系统';
COMMENT ON COLUMN jc_site_access.browser IS '浏览器';
COMMENT ON COLUMN jc_site_access.keyword IS '来访关键字';

CREATE TABLE jc_site_access_pages (
  access_pages_id NUMBER(11) NOT NULL,
  access_page varchar2(255) NOT NULL ,
  session_id varchar2(32) NOT NULL ,
  access_time TIMESTAMP(6) NOT NULL ,
  access_date date NOT NULL  ,
  visit_second NUMBER(11) default 0 NOT NULL ,
  page_index NUMBER(11) default 0 NOT NULL ,
  site_id NUMBER(11) default 1 NOT NULL 
) ;
alter table jc_site_access_pages add constraint PK_JC_SITE_ACCESS_PAGES primary key (access_pages_id);
ALTER TABLE jc_site_access_pages ADD CONSTRAINT fk_jc_access_pages_site FOREIGN KEY (site_id) REFERENCES jc_site (site_id);
CREATE SEQUENCE S_JC_SITE_ACCESS_PAGES start with 32;
COMMENT ON TABLE jc_site_access_pages IS '访问详细页面表';
COMMENT ON COLUMN jc_site_access_pages.access_page IS '访问时间';
COMMENT ON COLUMN jc_site_access_pages.access_page IS '访问日期';
COMMENT ON COLUMN jc_site_access_pages.access_page IS '停留时长（秒）';
COMMENT ON COLUMN jc_site_access_pages.access_page IS '用户访问页面的索引';

CREATE TABLE jc_site_access_statistic (
  access_statistic_id NUMBER(11) NOT NULL,
  statistic_date date NOT NULL ,
  pv NUMBER(11) default '0' NOT NULL  ,
  ip NUMBER(11) default '0' NOT NULL  ,
  visitors NUMBER(11) default '0' NOT NULL  ,
  pages_aver NUMBER(11) default '0' NOT NULL  ,
  visit_second_aver NUMBER(11)  default '0' NOT NULL ,
  site_id NUMBER(11) NOT NULL  ,
  statisitc_type varchar(255)  default 'all' NOT NULL ,
  statistic_column_value  varchar(255)  default ''
);
alter table jc_site_access_statistic add constraint PK_JC_SITE_ACCESS_STATISTIC primary key (access_statistic_id);
ALTER TABLE jc_site_access_statistic ADD CONSTRAINT fk_jc_access_statistic_site FOREIGN KEY (site_id) REFERENCES jc_site (site_id);
CREATE SEQUENCE S_JC_SITE_ACCESS_STATISTIC start with 355;
COMMENT ON TABLE jc_site_access_statistic IS '访问统计表';
COMMENT ON COLUMN jc_site_access_statistic.pv IS 'pv量';
COMMENT ON COLUMN jc_site_access_statistic.ip IS 'ip量';
COMMENT ON COLUMN jc_site_access_statistic.visitors IS '访客数量';
COMMENT ON COLUMN jc_site_access_statistic.pages_aver IS '人均浏览次数';
COMMENT ON COLUMN jc_site_access_statistic.visit_second_aver IS '人均访问时长（秒）';
COMMENT ON COLUMN jc_site_access_statistic.site_id IS '站点id';
COMMENT ON COLUMN jc_site_access_statistic.statisitc_type IS '统计分类（all代表当天所有访问量的统计）';
COMMENT ON COLUMN jc_site_access_statistic.statistic_column_value IS '统计列值';

CREATE TABLE jc_site_access_count (
  access_count NUMBER(11) NOT NULL,
  page_count NUMBER(11) default 1 NOT NULL ,
  visitors NUMBER(11) default 0 NOT NULL ,
  statistic_date date NOT NULL,
  site_id NUMBER(11) NOT NULL
);
alter table jc_site_access_count add constraint PK_JC_SITE_ACCESS_COUNT primary key (access_count);
ALTER TABLE jc_site_access_count ADD CONSTRAINT fk_jc_access_count_site FOREIGN KEY (site_id) REFERENCES jc_site (site_id);
CREATE SEQUENCE S_JC_SITE_ACCESS_COUNT start with 264;
COMMENT ON TABLE jc_site_access_count IS '每日统计页数访问情况';
COMMENT ON COLUMN jc_site_access_count.page_count IS '访问页数';
COMMENT ON COLUMN jc_site_access_count.visitors IS '用户数';
COMMENT ON COLUMN jc_site_access_count.statistic_date IS '统计日期';
COMMENT ON COLUMN jc_site_access_count.site_id IS '统计站点';

CREATE TABLE jc_directive_tpl (
  tpl_id NUMBER(11) NOT NULL,
  name varchar2(255) NOT NULL,
  description varchar2(1000) default NULL ,
  code clob ,
  user_id NUMBER(11) NOT NULL 
);
alter table jc_directive_tpl add constraint PK_JC_DIRECTIVE_TPL primary key (tpl_id);
ALTER TABLE jc_directive_tpl ADD CONSTRAINT fk_jc_directive_tpl_user FOREIGN KEY (user_id) REFERENCES jc_user (user_id);
CREATE SEQUENCE S_JC_DIRECTIVE_TPL start with 1;
COMMENT ON TABLE jc_directive_tpl IS '标签模板';
COMMENT ON COLUMN jc_directive_tpl.name IS '标签名称';
COMMENT ON COLUMN jc_directive_tpl.name IS '标签描述';
COMMENT ON COLUMN jc_directive_tpl.name IS '标签代码';
COMMENT ON COLUMN jc_directive_tpl.name IS '标签创建者';

CREATE TABLE jc_channel_count (
  channel_id NUMBER(11) NOT NULL,
  views NUMBER(11) default 0 NOT NULL ,
  views_month NUMBER(11) default 0 NOT NULL  ,
  views_week NUMBER(11) default 0 NOT NULL  ,
  views_day NUMBER(11) default 0 NOT NULL  
);
alter table jc_channel_count add constraint PK_JC_CHANNEL_COUNT primary key (channel_id);
ALTER TABLE jc_channel_count ADD CONSTRAINT fk_jc_count_channel FOREIGN KEY (channel_id) REFERENCES jc_channel (channel_id);
COMMENT ON TABLE jc_channel_count IS 'CMS栏目访问量计数表';
COMMENT ON COLUMN jc_channel_count.views IS '总访问数';
COMMENT ON COLUMN jc_channel_count.views IS '月访问数';
COMMENT ON COLUMN jc_channel_count.views IS '周访问数';
COMMENT ON COLUMN jc_channel_count.views IS '日访问数';

CREATE TABLE jc_score_group (
  score_group_id NUMBER(11) NOT NULL,
  name varchar2(255) NOT NULL ,
  description varchar2(1000)  ,
  enable NUMBER(1) default 0 NOT NULL  ,
  def NUMBER(1) default 0 NOT NULL  ,
  site_id NUMBER(11) NOT NULL  
);
alter table jc_score_group add constraint PK_JC_SCORE_GROUP primary key (score_group_id);
ALTER TABLE jc_score_group ADD CONSTRAINT fk_jc_score_group_site FOREIGN KEY (site_id) REFERENCES jc_site (site_id);
CREATE SEQUENCE S_JC_SCORE_GROUP start with 3;
COMMENT ON TABLE jc_score_group IS '评分组';
COMMENT ON COLUMN jc_score_group.name IS '分组名';
COMMENT ON COLUMN jc_score_group.description IS '描述';
COMMENT ON COLUMN jc_score_group.enable IS '是否启用';
COMMENT ON COLUMN jc_score_group.def IS '是否默认';
COMMENT ON COLUMN jc_score_group.site_id IS '站点';

CREATE TABLE jc_score_item (
  score_item_id NUMBER(11) NOT NULL,
  score_group_id NUMBER(11) NOT NULL,
  name varchar2(255) NOT NULL,
  score NUMBER(11) NOT NULL,
  image_path varchar2(255),
  priority NUMBER(11) default 10 NOT NULL 
);
alter table jc_score_item add constraint PK_JC_SCORE_ITEM primary key (score_item_id);
ALTER TABLE jc_score_item ADD CONSTRAINT fk_jc_score_item_group FOREIGN KEY (score_group_id) REFERENCES jc_score_group(score_group_id);
CREATE SEQUENCE S_JC_SCORE_ITEM start with 14;
COMMENT ON TABLE jc_score_item IS '评分项';
COMMENT ON COLUMN jc_score_item.score_group_id IS '评分组';
COMMENT ON COLUMN jc_score_item.score_group_id IS '评分名';
COMMENT ON COLUMN jc_score_item.score_group_id IS '分值';
COMMENT ON COLUMN jc_score_item.score_group_id IS '评分图标路径';
COMMENT ON COLUMN jc_score_item.score_group_id IS '排序';

CREATE TABLE jc_score_record (
  score_record_id NUMBER(11) NOT NULL,
  score_item_id NUMBER(11) NOT NULL ,
  content_id NUMBER(11) NOT NULL,
  score_count NUMBER(11) NOT NULL
);
alter table jc_score_record add constraint PK_JC_SCORE_RECORD primary key (score_record_id);
ALTER TABLE jc_score_record ADD CONSTRAINT fk_jc_record_score_item FOREIGN KEY (score_item_id) REFERENCES jc_score_item(score_item_id);
CREATE SEQUENCE S_JC_SCORE_RECORD start with 24;
COMMENT ON TABLE jc_score_record IS '评分记录';
COMMENT ON COLUMN jc_score_record.score_item_id IS '评分项';
COMMENT ON COLUMN jc_score_record.score_item_id IS '内容';
COMMENT ON COLUMN jc_score_record.score_item_id IS '评分次数';
COMMENT ON COLUMN jc_score_record.score_item_id IS '评分纪录';

CREATE TABLE jc_webservice (
service_id NUMBER(11) NOT NULL ,
service_address NVARCHAR2(255) NOT NULL ,
target_namespace NVARCHAR2(255) NULL ,
success_result NVARCHAR2(255) NULL ,
service_type NVARCHAR2(50) NULL ,
service_operate NVARCHAR2(50) NULL 
);
COMMENT ON TABLE jc_webservice IS '接口表';
COMMENT ON COLUMN jc_webservice.service_address IS '接口地址';
COMMENT ON COLUMN jc_webservice.success_result IS '正确返回值';
COMMENT ON COLUMN jc_webservice.service_type IS '接口类型';
COMMENT ON COLUMN jc_webservice.service_operate IS '接口操作';

CREATE TABLE jc_webservice_auth (
auth_id NUMBER(11) NOT NULL ,
username NVARCHAR2(50) NOT NULL ,
password NVARCHAR2(50) NOT NULL ,
system NVARCHAR2(100) NOT NULL ,
is_enable NUMBER(4) NOT NULL 
);

COMMENT ON TABLE jc_webservice_auth IS 'webservices认证表';
COMMENT ON COLUMN jc_webservice_auth.username IS '用户名';
COMMENT ON COLUMN jc_webservice_auth.password IS '密码';
COMMENT ON COLUMN jc_webservice_auth.system IS '系统';
COMMENT ON COLUMN jc_webservice_auth.is_enable IS '是否启用';

CREATE TABLE jc_webservice_call_record (
record_id NUMBER(11) NOT NULL ,
service_code NVARCHAR2(50) NOT NULL ,
auth_id NUMBER(11) NOT NULL ,
record_time DATE NOT NULL 
);
COMMENT ON TABLE jc_webservice_call_record IS '接口调用记录;';
COMMENT ON COLUMN jc_webservice_call_record.service_code IS '接口识别码';
COMMENT ON COLUMN jc_webservice_call_record.auth_id IS '调用的认证';
COMMENT ON COLUMN jc_webservice_call_record.record_time IS '调用时间';
CREATE TABLE jc_webservice_param (
service_id NUMBER(11) NOT NULL ,
priority NUMBER(11) NOT NULL ,
param_name NVARCHAR2(100) NOT NULL ,
default_value NVARCHAR2(255) NULL 
);
COMMENT ON TABLE jc_webservice_param IS '接口参数表;';
COMMENT ON COLUMN jc_webservice_param.priority IS '排列顺序';
COMMENT ON COLUMN jc_webservice_param.param_name IS '参数名';
COMMENT ON COLUMN jc_webservice_param.default_value IS '默认值';

alter table jc_content_doc add swf_num NUMBER(11) default 1  not null;
COMMENT ON COLUMN jc_content_doc.swf_num IS 'swf文件总量';

alter table jc_content modify  status NUMBER(4) default 2  ;
COMMENT ON COLUMN jc_content.status IS '状态(0:草稿;1:审核中;2:审核通过;3:回收站；4:投稿)';



alter table jc_channel_ext add  allow_share NUMBER(1) default 0 NOT NULL;
COMMENT ON COLUMN jc_channel_ext.allow_share IS '分享(true:开放;false:关闭)';
alter table jc_channel_ext add  allow_score NUMBER(1) default 0 NOT NULL ;
COMMENT ON COLUMN jc_channel_ext.allow_score IS '评分(true:开放;false:关闭)';

alter table jc_content add  score NUMBER(11)  default 0 not null;
COMMENT ON COLUMN jc_content.score IS '得分';

CREATE TABLE jc_third_account (
  account_id NUMBER(20) NOT NULL ,
  account_key varchar2(255) default '' NOT NULL ,
  username varchar2(100)  NOT NULL ,
  source varchar2(10) NOT NULL 
);

alter table jc_third_account add constraint PK_JC_THIRD_ACCOUNT primary key (account_id);
CREATE SEQUENCE S_JC_THIRD_ACCOUNT start with 1;
COMMENT ON TABLE jc_third_account IS '第三方登录平台账号';
COMMENT ON COLUMN jc_third_account.account_key IS '第三方账号key';
COMMENT ON COLUMN jc_third_account.username IS '关联用户名';
COMMENT ON COLUMN jc_third_account.source IS '第三方账号平台(QQ、新浪微博等)';

alter table jc_site add  keywords varchar2(255) ;
alter table jc_site add  description varchar2(255);
COMMENT ON COLUMN jc_site.keywords IS '站点关键字';
COMMENT ON COLUMN jc_site.description IS '站点描述';
delete from jc_model_item where field='userIds';
CREATE SEQUENCE S_JC_WEBSERVICE start with 4;
CREATE SEQUENCE S_JC_WEBSERVICE_AUTH start with 2;
CREATE SEQUENCE S_JC_WEBSERVICE_CALL_RECORD start with 1;


alter table jc_user add  session_id varchar2(255) ;

insert into jc_config_attr (CONFIG_ID, ATTR_NAME, ATTR_VALUE)values (1, 'sso_1', 'http://bbs.cmscms.com/jeebbs4/sso/authenticate.jspx');

CREATE TABLE jc_api_info (
  id number(11) NOT NULL,
  api_name varchar2(255) NOT NULL ,
  api_url varchar2(255) NOT NULL,
  api_code varchar2(50) NOT NULL,
  disabled number(1)  default  0 NOT NULL,
  limit_call_day number(11)  default  0 NOT NULL,
  call_total_count number(11)  default  0 NOT NULL,
  call_month_count number(11)  default  0 NOT NULL,
  call_week_count number(11)  default  0 NOT NULL,
  call_day_count number(11)  default  0 NOT NULL,
  last_call_time timestamp 
);
ALTER TABLE jc_api_info ADD CONSTRAINT pk_jc_api_info primary key (id);
COMMENT ON TABLE jc_api_info is 'API接口信息';
COMMENT ON COLUMN jc_api_info.api_name is '接口名称';
COMMENT ON COLUMN jc_api_info.api_url is '接口URL';
COMMENT ON COLUMN jc_api_info.api_code is '接口代码';
COMMENT ON COLUMN jc_api_info.disabled is '是否禁用';
COMMENT ON COLUMN jc_api_info.limit_call_day is '每日限制调用次数(0无限制)';
COMMENT ON COLUMN jc_api_info.call_total_count is '总调用次数';
COMMENT ON COLUMN jc_api_info.call_month_count is '月调用次数';
COMMENT ON COLUMN jc_api_info.call_week_count is '日调用次数';
COMMENT ON COLUMN jc_api_info.last_call_time is '最后一次调用时间';
CREATE SEQUENCE S_JC_API_INFO  start with 77;

CREATE TABLE jc_api_account (
  id number(11) NOT NULL,
  app_id varchar2(255) NOT NULL ,
  app_key varchar2(255) NOT NULL,
  aes_key varchar2(100) NOT NULL,
  disabled number(1)  default  0 NOT NULL,
  iv_key varchar2(50)  NOT NULL
);
CREATE SEQUENCE S_JC_API_ACCOUNT  start with 1;
COMMENT ON TABLE jc_api_account is 'API应用账户';
COMMENT ON COLUMN jc_api_account.app_id is 'appId';
COMMENT ON COLUMN jc_api_account.app_key is 'appKey';
COMMENT ON COLUMN jc_api_account.aes_key is 'AES加解密密钥';
COMMENT ON COLUMN jc_api_account.disabled is '是否禁用';
COMMENT ON COLUMN jc_api_account.disabled is 'AES iv key';
ALTER TABLE jc_api_account ADD CONSTRAINT pk_jc_api_account primary key (id);

CREATE TABLE jc_api_user_login (
  id number(20) NOT NULL,
  session_key varchar2(100),
  username varchar2(255) NOT NULL,
  login_time timestamp NOT NULL,
  login_count number(11)  default  0 NOT NULL
);
CREATE SEQUENCE S_JC_API_USER_LOGIN  start with 1;
ALTER TABLE jc_api_user_login ADD CONSTRAINT pk_jc_api_user_login primary key (id);
COMMENT ON TABLE jc_api_user_login is 'API用户登录表';
COMMENT ON COLUMN jc_api_user_login.session_key is 'sesssionKey';
COMMENT ON COLUMN jc_api_user_login.username is '用户名';
COMMENT ON COLUMN jc_api_user_login.login_time is '登陆时间';
COMMENT ON COLUMN jc_api_user_login.login_count is '登陆次数';

CREATE TABLE jc_api_record (
  id number(20) NOT NULL ,
  api_account number(11)  default  0 NOT NULL,
  call_ip varchar2(255) ,
  api_info_id number(11) default 0,
  api_call_time timestamp NOT NULL,
  call_time_stamp number(20)  default  0 NOT NULL,
  sign varchar2(100) NOT NULL
);
ALTER TABLE jc_api_record ADD CONSTRAINT pk_jc_api_record primary key (id);
ALTER TABLE jc_api_record ADD  CONSTRAINT fk_api_info FOREIGN KEY (api_info_id) REFERENCES jc_api_info (id);
ALTER TABLE jc_api_record ADD CONSTRAINT fk_api_record_account FOREIGN KEY (api_account) REFERENCES jc_api_account (id);
CREATE SEQUENCE S_JC_API_RECORD  start with 1;
COMMENT ON TABLE jc_api_record is 'API调用记录';
COMMENT ON COLUMN jc_api_record.api_account is '调用的账户';
COMMENT ON COLUMN jc_api_record.call_ip is '调用的IP';
COMMENT ON COLUMN jc_api_record.api_info_id is '接口';
COMMENT ON COLUMN jc_api_record.api_call_time is '调用时间';
COMMENT ON COLUMN jc_api_record.call_time_stamp is '调用的时间戳';
COMMENT ON COLUMN jc_api_record.sign is '签名数据(不允许重复调用)';

CREATE TABLE jc_content_reward_fix (
  content_id number(11)  default  0 NOT NULL,
  priority number(11) default 10 NOT NULL,
  reward_fix number(11,2)  default  0 NOT NULL
);
ALTER TABLE jc_content_reward_fix ADD CONSTRAINT uk_jc_content_reward_fix  unique(content_id,priority);
COMMENT ON TABLE jc_content_reward_fix is '内容打赏设置固定值';
COMMENT ON COLUMN jc_content_reward_fix.reward_fix is '固定值';


INSERT INTO jc_api_info VALUES (1,'栏目列表','/api/channel/list.jspx','010101',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (2,'单个栏目','/api/channel/get.jspx','010102',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (3,'新增栏目','/api/channel/save.jspx','010103',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (4,'修改栏目','/api/channel/update.jspx','010104',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (5,'内容列表','/api/content/list.jspx','010201',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (6,'内容获取','/api/content/get.jspx','010202',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (7,'我的内容','/api/content/mycontents.jspx','010203',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (8,'新增内容','/api/content/save.jspx','010204',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (9,'修改内容','/api/content/update.jspx','010205',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (10,'删除内容到回收站','/api/content/del.jspx','010206',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (11,'还原内容','/api/content/recycle.jspx','010207',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (12,'审核内容','/api/content/check.jspx','010208',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (13,'退回内容','/api/content/reject.jspx','010209',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (14,'顶内容','/api/content/up.jspx','010210',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (15,'踩内容','/api/content/down.jspx','010211',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (16,'内容购买','/api/content/buy.jspx','010212',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (17,'内容打赏','/api/content/reward.jspx','010213',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (18,'内容收藏','/api/content/collect.jspx','010301',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (19,'我的收藏','/api/content/mycollect.jspx','010302',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (20,'专题列表','/api/topic/list.jspx','010401',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (21,'专题获取','/api/topic/get.jspx','010402',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (22,'专题保存','/api/topic/save.jspx','010403',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (23,'专题修改','/api/topic/update.jspx','040404',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (24,'全文检索','/api/content/search.jspx','010501',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (25,'Tag列表','/api/contenttag/list.jspx','010601',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (26,'热词列表','/api/searchword/list.jspx','010701',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (27,'友情链接列表','/api/friendlink/list.jspx','010801',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (28,'友情链接分类列表','/api/friendlinkctg/list.jspx','010802',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (29,'广告列表','/api/ad/list.jspx','010901',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (30,'广告分类列表','/api/adctg/list.jspx','010902',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (31,'单广告获取','/api/ad/get.jspx','010903',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (32,'评论列表','/api/comment/list.jspx','011001',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (33,'单评论获取','/api/comment/get.jspx','011002',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (34,'发布评论','/api/comment/save.jspx','011003',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (35,'评论顶','/comment_up.jspx','011004',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (36,'评论踩','/comment_down.jspx','011005',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (37,'我的评论','/api/comment/mylist.jspx','011006',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (38,'留言列表','/api/guestbook/list.jspx','011101',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (39,'我的留言','/api/guestbook/mylist.jspx','011102',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (40,'留言分类列表','/api/guestbookctg/list.jspx','011103',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (41,'单留言获取','/api/guestbook/get.jspx','011104',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (42,'发布留言','/api/guestbook/save.jspx','011105',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (43,'投票列表','/api/vote/list.jspx','011201',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (44,'单个投票','/api/vote/get.jspx','011202',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (45,'投票','/api/vote/save.jspx','011203',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (46,'新增会员','/api/user/add.jspx','011301',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (47,'会员修改资料','/api/user/edit.jspx','011302',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (48,'用户修改密码','/api/user/pwd.jspx','011303',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (49,'读取用户信息','/api/user/get.jspx','011304',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (50,'用户名唯一性检查','/username_unique.jspx','011305',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (51,'字典列表','/api/dictionary/list.jspx','011401',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (52,'我的职位申请','/api/resume/myapplys.jspx','011501',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (53,'申请职位','/api/resume/apply.jspx','011502',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (54,'撤销申请','/api/resume/cancelApply.jspx','011503',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (55,'查看我的简历','/api/resume/get.jspx','011601',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (56,'修改简历','/api/resume/update.jspx','011602',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (57,'站内信列表','/api/message/list.jspx','011701',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (58,'站内信单信息获取','/api/message/get.jspx','011702',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (59,'站内信息发送','/api/message/send.jspx','011703',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (60,'站内信草稿修改','/api/message/draftUpdate.jspx','011703',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (61,'站内信草稿发送','/api/message/draftToSend.jspx','011704',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (62,'删除站内信到回收站','/api/message/trash.jspx','011705',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (63,'还原站内信息','/api/message/revert.jspx','011706',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (64,'删除站内信','/api/message/delete.jspx','011707',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (65,'上传文件','/api/upload/o_upload.jspx','011801',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (66,'上传文库文档','/api/upload/o_upload_doc.jspx','011802',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (67,'内容打赏记录','/api/order/getByContent.jspx','011901',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (68,'我的消费记录和我的订单','/api/order/myorders.jspx','011902',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (69,'收益统计','/api/order/chargelist.jspx','011903',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (70,'提现申请','/api/draw/apply.jspx','011904',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (71,'删除提现申请','/api/draw/delete.jspx','011905',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (72,'提现申请列表','/api/draw/list.jspx','011906',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (73,'个人账户信息获取','/api/account/get.jspx','011907',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (74,'登陆','/api/user/login.jspx','012001',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (75,'退出','/api/user/logout.jspx','012002',0,0,0,0,0,0,NULL);
INSERT INTO jc_api_info VALUES (76,'用户状态检查','/api/user/getStatus.jspx','012003',0,0,0,0,0,0,NULL);

INSERT INTO jc_config_attr  VALUES (1,'reward_fix_4','4');
INSERT INTO jc_config_attr  VALUES (1,'reward_fix_1','1');
INSERT INTO jc_config_attr  VALUES (1,'reward_fix_3','3');
INSERT INTO jc_config_attr  VALUES (1,'reward_fix_2','2');
INSERT INTO jc_config_attr  VALUES (1,'reward_fix_5','5');
INSERT INTO jc_config_attr  VALUES (1,'reward_fix_6','6');
INSERT INTO jc_config_attr  VALUES (1,'weixinAppId','1212');
INSERT INTO jc_config_attr  VALUES (1,'weixinAppSecret','121212');

INSERT INTO jc_config_attr  VALUES (1,'weixinLoginId','1212');
INSERT INTO jc_config_attr  VALUES (1,'weixinLoginSecret','121212');

alter table jc_third_account  add   user_id number(11);
COMMENT ON COLUMN jc_third_account.user_id is '用户iD';
update  jc_third_account  a set a.user_id=(SELECT user_id FROM jc_user b WHERE b.username= a.username); 
alter table jc_role  add   role_level number(11) default 10 NOT NULL;
COMMENT ON COLUMN jc_role.role_level is '角色等级';



-- ----------------------------
-- Primary Key structure for table jc_webservice
-- ----------------------------
ALTER TABLE jc_webservice ADD PRIMARY KEY (service_id);

-- ----------------------------
-- Primary Key structure for table jc_webservice_auth
-- ----------------------------
ALTER TABLE jc_webservice_auth ADD PRIMARY KEY (auth_id);

-- ----------------------------
-- Indexes structure for table jc_webservice_call_record
-- ----------------------------
CREATE INDEX fk_webservice_record_auth
ON jc_webservice_call_record (auth_id );

-- ----------------------------
-- Primary Key structure for table jc_webservice_call_record
-- ----------------------------
ALTER TABLE jc_webservice_call_record ADD PRIMARY KEY (record_id);

-- ----------------------------
-- Indexes structure for table jc_webservice_param
-- ----------------------------
CREATE INDEX fk_param_webservice
ON jc_webservice_param (service_id );

-- ----------------------------
-- Foreign Key structure for table jc_webservice_call_record
-- ----------------------------
ALTER TABLE jc_webservice_call_record ADD FOREIGN KEY (auth_id) REFERENCES jc_webservice_auth (auth_id);

-- ----------------------------
-- Foreign Key structure for table jc_webservice_param
-- ----------------------------
ALTER TABLE jc_webservice_param ADD FOREIGN KEY (service_id) REFERENCES jc_webservice (service_id);

ALTER TABLE JC_ACQUISITION
   ADD CONSTRAINT FK_JC_ACQUISITION_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_ACQUISITION
   ADD CONSTRAINT FK_JC_ACQUISITION_CONTENTTYPE FOREIGN KEY (TYPE_ID)
      REFERENCES JC_CONTENT_TYPE (TYPE_ID);

ALTER TABLE JC_ACQUISITION
   ADD CONSTRAINT FK_JC_ACQUISITION_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_ACQUISITION
   ADD CONSTRAINT FK_JC_ACQUISITION_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_ACQUISITION_HISTORY
   ADD CONSTRAINT FK_JC_HISTORY_ACQUISITION FOREIGN KEY (ACQUISITION_ID)
      REFERENCES JC_ACQUISITION (ACQUISITION_ID);

ALTER TABLE JC_ACQUISITION_TEMP
   ADD CONSTRAINT FK_JC_TEMP_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_ADVERTISING
   ADD CONSTRAINT FK_JC_ADVERTISING_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_ADVERTISING
   ADD CONSTRAINT FK_JC_SPACE_ADVERTISING FOREIGN KEY (ADSPACE_ID)
      REFERENCES JC_ADVERTISING_SPACE (ADSPACE_ID);

ALTER TABLE JC_ADVERTISING_ATTR
   ADD CONSTRAINT FK_JC_PARAMS_ADVERTISING FOREIGN KEY (ADVERTISING_ID)
      REFERENCES JC_ADVERTISING (ADVERTISING_ID);

ALTER TABLE JC_ADVERTISING_SPACE
   ADD CONSTRAINT FK_JC_ADSPACE_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_CHANNEL
   ADD CONSTRAINT FK_JC_CHANNEL_MODEL FOREIGN KEY (MODEL_ID)
      REFERENCES JC_MODEL (MODEL_ID);

ALTER TABLE JC_CHANNEL
   ADD CONSTRAINT FK_JC_CHANNEL_PARENT FOREIGN KEY (PARENT_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHANNEL
   ADD CONSTRAINT FK_JC_CHANNEL_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_CHANNEL_ATTR
   ADD CONSTRAINT FK_JC_ATTR_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHANNEL_DEPARTMENT
   ADD CONSTRAINT FK_JC_CHANNEL_DEPARTMENT FOREIGN KEY (DEPARTMENT_ID)
      REFERENCES JC_DEPARTMENT (DEPART_ID);

ALTER TABLE JC_CHANNEL_DEPARTMENT
   ADD CONSTRAINT FK_JC_DEPARTMENT_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHANNEL_EXT
   ADD CONSTRAINT FK_JC_EXT_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHANNEL_MODEL
   ADD CONSTRAINT FK_JC_CHANNEL_MODEL_C FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHANNEL_MODEL
   ADD CONSTRAINT FK_JC_MODEL_CHANNEL_M FOREIGN KEY (MODEL_ID)
      REFERENCES JC_MODEL (MODEL_ID);

ALTER TABLE JC_CHANNEL_TXT
   ADD CONSTRAINT FK_JC_TXT_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHANNEL_USER
   ADD CONSTRAINT FK_JC_CHANNEL_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_CHANNEL_USER
   ADD CONSTRAINT FK_JC_USER_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHNL_GROUP_CONTRI
   ADD CONSTRAINT FK_JC_CHANNEL_GROUP_C FOREIGN KEY (GROUP_ID)
      REFERENCES JC_GROUP (GROUP_ID);

ALTER TABLE JC_CHNL_GROUP_CONTRI
   ADD CONSTRAINT FK_JC_GROUP_CHANNEL_C FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CHNL_GROUP_VIEW
   ADD CONSTRAINT FK_JC_CHANNEL_GROUP_V FOREIGN KEY (GROUP_ID)
      REFERENCES JC_GROUP (GROUP_ID);

ALTER TABLE JC_CHNL_GROUP_VIEW
   ADD CONSTRAINT FK_JC_GROUP_CHANNEL_V FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_COMMENT
   ADD CONSTRAINT FK_JC_COMMENT_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_COMMENT
   ADD CONSTRAINT FK_JC_COMMENT_REPLY FOREIGN KEY (REPLY_USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_COMMENT
   ADD CONSTRAINT FK_JC_COMMENT_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_COMMENT
   ADD CONSTRAINT FK_JC_COMMENT_USER FOREIGN KEY (COMMENT_USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_COMMENT_EXT
   ADD CONSTRAINT FK_JC_EXT_COMMENT FOREIGN KEY (COMMENT_ID)
      REFERENCES JC_COMMENT (COMMENT_ID);

ALTER TABLE JC_CONTENT
   ADD CONSTRAINT FK_JC_CONTENT_MODEL FOREIGN KEY (MODEL_ID)
      REFERENCES JC_MODEL (MODEL_ID);

ALTER TABLE JC_CONTENT
   ADD CONSTRAINT FK_JC_CONTENT_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_CONTENT
   ADD CONSTRAINT FK_JC_CONTENT_TYPE FOREIGN KEY (TYPE_ID)
      REFERENCES JC_CONTENT_TYPE (TYPE_ID);

ALTER TABLE JC_CONTENT
   ADD CONSTRAINT FK_JC_CONTENT_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_CONTENT
   ADD CONSTRAINT FK_JC_CONTENTCHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CONTENT_ATTACHMENT
   ADD CONSTRAINT FK_JC_ATTACHMENT_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_ATTR
   ADD CONSTRAINT FK_JC_ATTR_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_CHANNEL
   ADD CONSTRAINT FK_JC_CHANNEL_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_CHANNEL
   ADD CONSTRAINT FK_JC_CONTENT_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CONTENT_CHECK
   ADD CONSTRAINT FK_JC_CHECK_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_CHECK
   ADD CONSTRAINT FK_JC_CONTENT_CHECK_USER FOREIGN KEY (REVIEWER)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_CONTENT_COUNT
   ADD CONSTRAINT FK_JC_COUNT_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_DOC
   ADD CONSTRAINT FK_JC_DOC_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_EXT
   ADD CONSTRAINT FK_JC_EXT_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_GROUP_VIEW
   ADD CONSTRAINT FK_JC_CONTENT_GROUP_V FOREIGN KEY (GROUP_ID)
      REFERENCES JC_GROUP (GROUP_ID);

ALTER TABLE JC_CONTENT_GROUP_VIEW
   ADD CONSTRAINT FK_JC_GROUP_CONTENT_V FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_PICTURE
   ADD CONSTRAINT FK_JC_PICTURE_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_SHARE_CHECK
   ADD CONSTRAINT FK_CHANNEL_JC_CONTENT_SHARE FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_CONTENT_SHARE_CHECK
   ADD CONSTRAINT FK_CHECK_JC_CONTENT_SHARE FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_TOPIC
   ADD CONSTRAINT FK_JC_CONTENT_TOPIC FOREIGN KEY (TOPIC_ID)
      REFERENCES JC_TOPIC (TOPIC_ID);

ALTER TABLE JC_CONTENT_TOPIC
   ADD CONSTRAINT FK_JC_TOPIC_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENT_TXT
   ADD CONSTRAINT FK_JC_TXT_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_CONTENTTAG
   ADD CONSTRAINT FK_JC_CONTENT_TAG FOREIGN KEY (TAG_ID)
      REFERENCES JC_CONTENT_TAG (TAG_ID);

ALTER TABLE JC_CONTENTTAG
   ADD CONSTRAINT FK_JC_TAG_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_DEPARTMENT
   ADD CONSTRAINT FK_JC_JC_DEPARTMENT_PARENT FOREIGN KEY (PARENT_ID)
      REFERENCES JC_DEPARTMENT (DEPART_ID);

ALTER TABLE JC_FRIENDLINK
   ADD CONSTRAINT FK_JC_CTG_FRIENDLINK FOREIGN KEY (FRIENDLINKCTG_ID)
      REFERENCES JC_FRIENDLINK_CTG (FRIENDLINKCTG_ID);

ALTER TABLE JC_FRIENDLINK
   ADD CONSTRAINT FK_JC_FRIENDLINK_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_FRIENDLINK_CTG
   ADD CONSTRAINT FK_JC_FRIENDLINKCTG_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_GUESTBOOK
   ADD CONSTRAINT FK_JC_CTG_GUESTBOOK FOREIGN KEY (GUESTBOOKCTG_ID)
      REFERENCES JC_GUESTBOOK_CTG (GUESTBOOKCTG_ID);

ALTER TABLE JC_GUESTBOOK
   ADD CONSTRAINT FK_JC_GUESTBOOK_ADMIN FOREIGN KEY (ADMIN_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_GUESTBOOK
   ADD CONSTRAINT FK_JC_GUESTBOOK_MEMBER FOREIGN KEY (MEMBER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_GUESTBOOK
   ADD CONSTRAINT FK_JC_GUESTBOOK_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_GUESTBOOK_CTG
   ADD CONSTRAINT FK_JC_GUESTBOOKCTG_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_GUESTBOOK_CTG_DEPARTMENT
   ADD CONSTRAINT FK_JC_DEPARTMENT_GUESTBOOK_CTG FOREIGN KEY (GUESTBOOKCTG_ID)
      REFERENCES JC_GUESTBOOK_CTG (GUESTBOOKCTG_ID);

ALTER TABLE JC_GUESTBOOK_CTG_DEPARTMENT
   ADD CONSTRAINT FK_JC_GUESTBOOK_CTG_DEPARTMENT FOREIGN KEY (DEPART_ID)
      REFERENCES JC_DEPARTMENT (DEPART_ID);

ALTER TABLE JC_GUESTBOOK_EXT
   ADD CONSTRAINT FK_JC_EXT_GUESTBOOK FOREIGN KEY (GUESTBOOK_ID)
      REFERENCES JC_GUESTBOOK (GUESTBOOK_ID);

ALTER TABLE JC_JOB_APPLY
   ADD CONSTRAINT FK_JC_JOB_APPLY_CONTENT FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_JOB_APPLY
   ADD CONSTRAINT FK_JC_JOB_APPLY_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_KEYWORD
   ADD CONSTRAINT FK_JC_KEYWORD_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_LOG
   ADD CONSTRAINT FK_JC_LOG_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_LOG
   ADD CONSTRAINT FK_JC_LOG_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_MESSAGE
   ADD CONSTRAINT FK_JC_MESSAGE_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_MESSAGE
   ADD CONSTRAINT FK_JC_MESSAGE_USER_RECEIVER FOREIGN KEY (MSG_RECEIVER_USER)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_MESSAGE
   ADD CONSTRAINT FK_JC_MESSAGE_USER_SEND FOREIGN KEY (MSG_SEND_USER)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_MODEL_ITEM
   ADD CONSTRAINT FK_JC_ITEM_MODEL FOREIGN KEY (MODEL_ID)
      REFERENCES JC_MODEL (MODEL_ID);

ALTER TABLE JC_RECEIVER_MESSAGE
   ADD CONSTRAINT FK_JC_MSG_USER_RECEIVER FOREIGN KEY (MSG_RECEIVER_USER)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_RECEIVER_MESSAGE
   ADD CONSTRAINT FK_JC_MSG_USER_SEND FOREIGN KEY (MSG_SEND_USER)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_RECEIVER_MESSAGE
   ADD CONSTRAINT FK_JC_RECEIVER_MESSAGE_MESSAGE FOREIGN KEY (MSG_ID)
      REFERENCES JC_MESSAGE (MSG_ID);

ALTER TABLE JC_RECEIVER_MESSAGE
   ADD CONSTRAINT FK_JC_RECEIVER_MESSAGE_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_ROLE
   ADD CONSTRAINT FK_JC_ROLE_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_ROLE_PERMISSION
   ADD CONSTRAINT FK_JC_PERMISSION_ROLE FOREIGN KEY (ROLE_ID)
      REFERENCES JC_ROLE (ROLE_ID);

ALTER TABLE JC_SITE
   ADD CONSTRAINT FK_JC_SITE_CONFIG FOREIGN KEY (CONFIG_ID)
      REFERENCES JC_CONFIG (CONFIG_ID);

ALTER TABLE JC_SITE
   ADD CONSTRAINT FK_JC_SITE_UPLOAD_FTP FOREIGN KEY (FTP_UPLOAD_ID)
      REFERENCES JO_FTP (FTP_ID);

ALTER TABLE JC_SITE_ATTR
   ADD CONSTRAINT FK_JC_ATTR_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_SITE_CFG
   ADD CONSTRAINT FK_JC_CFG_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_SITE_COMPANY
   ADD CONSTRAINT FK_JC_COMPANY_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_SITE_FLOW
   ADD CONSTRAINT FK_JC_FLOW_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_SITE_TXT
   ADD CONSTRAINT FK_JC_TXT_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_TASK
   ADD CONSTRAINT FK_JC_TASK_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_TASK_ATTR
   ADD CONSTRAINT FK_JC_ATTR_TASK FOREIGN KEY (TASK_ID)
      REFERENCES JC_TASK (TASK_ID);

ALTER TABLE JC_TOPIC
   ADD CONSTRAINT FK_JC_TOPIC_CHANNEL FOREIGN KEY (CHANNEL_ID)
      REFERENCES JC_CHANNEL (CHANNEL_ID);

ALTER TABLE JC_USER
   ADD CONSTRAINT FK_JC_USER_DEPART FOREIGN KEY (DEPART_ID)
      REFERENCES JC_DEPARTMENT (DEPART_ID);

ALTER TABLE JC_USER
   ADD CONSTRAINT FK_JC_USER_GROUP FOREIGN KEY (GROUP_ID)
      REFERENCES JC_GROUP (GROUP_ID);

ALTER TABLE JC_USER_COLLECTION
   ADD CONSTRAINT FK_JC_USER_COLLECTION_CON FOREIGN KEY (CONTENT_ID)
      REFERENCES JC_CONTENT (CONTENT_ID);

ALTER TABLE JC_USER_COLLECTION
   ADD CONSTRAINT FK_JC_USER_COLLECTION_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_USER_EXT
   ADD CONSTRAINT FK_JC_EXT_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_USER_RESUME
   ADD CONSTRAINT FK_JC_RESUME_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_USER_ROLE
   ADD CONSTRAINT FK_JC_ROLE_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_USER_ROLE
   ADD CONSTRAINT FK_JC_USER_ROLE FOREIGN KEY (ROLE_ID)
      REFERENCES JC_ROLE (ROLE_ID);

ALTER TABLE JC_USER_SITE
   ADD CONSTRAINT FK_JC_SITE_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_USER_SITE
   ADD CONSTRAINT FK_JC_USER_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_VOTE_ITEM
   ADD CONSTRAINT FK_JC_VOTE_ITEM_SUBTOPIC FOREIGN KEY (SUBTOPIC_ID)
      REFERENCES JC_VOTE_SUBTOPIC (SUBTOPIC_ID);

ALTER TABLE JC_VOTE_ITEM
   ADD CONSTRAINT FK_JC_VOTE_ITEM_TOPIC FOREIGN KEY (VOTETOPIC_ID)
      REFERENCES JC_VOTE_TOPIC (VOTETOPIC_ID);

ALTER TABLE JC_VOTE_RECORD
   ADD CONSTRAINT FK_JC_VOTE_RECORD_TOPIC FOREIGN KEY (VOTETOPIC_ID)
      REFERENCES JC_VOTE_TOPIC (VOTETOPIC_ID);

ALTER TABLE JC_VOTE_RECORD
   ADD CONSTRAINT FK_JC_VOTERECORD_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_VOTE_REPLY
   ADD CONSTRAINT FK_JC_VOTE_REPLY_SUB FOREIGN KEY (SUBTOPIC_ID)
      REFERENCES JC_VOTE_SUBTOPIC (SUBTOPIC_ID);

ALTER TABLE JC_VOTE_SUBTOPIC
   ADD CONSTRAINT FK_JC_VOTE_SUBTOPIC_VOTE FOREIGN KEY (VOTETOPIC_ID)
      REFERENCES JC_VOTE_TOPIC (VOTETOPIC_ID);

ALTER TABLE JC_VOTE_TOPIC
   ADD CONSTRAINT FK_JC_VOTETOPIC_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_WORKFLOW
   ADD CONSTRAINT FK_JC_WORKFLOW_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_WORKFLOW_EVENT
   ADD CONSTRAINT FK_EVENT_FLOW FOREIGN KEY (WORKFLOW_ID)
      REFERENCES JC_WORKFLOW (WORKFLOW_ID);

ALTER TABLE JC_WORKFLOW_EVENT
   ADD CONSTRAINT FK_WORKFLOW_EVENT_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_WORKFLOW_EVENT_USER
   ADD CONSTRAINT FK_JC_WE_EVENT FOREIGN KEY (EVENT_ID)
      REFERENCES JC_WORKFLOW_EVENT (EVENT_ID);

ALTER TABLE JC_WORKFLOW_EVENT_USER
   ADD CONSTRAINT FK_JC_WE_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

ALTER TABLE JC_WORKFLOW_NODE
   ADD CONSTRAINT FK_JC_NODE_WORKFLOW FOREIGN KEY (WORKFLOW_ID)
      REFERENCES JC_WORKFLOW (WORKFLOW_ID);

ALTER TABLE JC_WORKFLOW_NODE
   ADD CONSTRAINT FK_JC_WORKFLOW_NODE_ROLE FOREIGN KEY (ROLE_ID)
      REFERENCES JC_ROLE (ROLE_ID);

ALTER TABLE JC_WORKFLOW_RECORD
   ADD CONSTRAINT FK_JC_WORKFLOWRECORD_EVENT FOREIGN KEY (EVENT_ID)
      REFERENCES JC_WORKFLOW_EVENT (EVENT_ID);

ALTER TABLE JC_WORKFLOW_RECORD
   ADD CONSTRAINT FK_JC_WORKFLOWRECORD_SITE FOREIGN KEY (SITE_ID)
      REFERENCES JC_SITE (SITE_ID);

ALTER TABLE JC_WORKFLOW_RECORD
   ADD CONSTRAINT FK_JC_WORKFLOWRECORD_USER FOREIGN KEY (USER_ID)
      REFERENCES JC_USER (USER_ID);

/*==============================================================*/
/* Index: JC_ACQUISITION_SITE_FK                                */
/*==============================================================*/
CREATE INDEX JC_ACQUISITION_SITE_FK ON JC_ACQUISITION (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_ACQUISITION_USER_FK                                */
/*==============================================================*/
CREATE INDEX JC_ACQUISITION_USER_FK ON JC_ACQUISITION (
   USER_ID ASC
);

/*==============================================================*/
/* Index: JC_ACQUISITION_CHANNEL_FK                             */
/*==============================================================*/
CREATE INDEX JC_ACQUISITION_CHANNEL_FK ON JC_ACQUISITION (
   CHANNEL_ID ASC
);

/*==============================================================*/
/* Index: JC_ACQUISITION_TYPE_FK                                */
/*==============================================================*/
CREATE INDEX JC_ACQUISITION_TYPE_FK ON JC_ACQUISITION (
   TYPE_ID ASC
);
/*==============================================================*/
/* Index: JC_CHANNEL_SITE_FK                                    */
/*==============================================================*/
CREATE INDEX JC_CHANNEL_SITE_FK ON JC_CHANNEL (
   SITE_ID ASC
);

/*==============================================================*/
/* Index: JC_CHANNEL_PARENT_FK                                  */
/*==============================================================*/
CREATE INDEX JC_CHANNEL_PARENT_FK ON JC_CHANNEL (
   PARENT_ID ASC
);

/*==============================================================*/
/* Index: JC_CHANNEL_MODEL_FK                                   */
/*==============================================================*/
CREATE INDEX JC_CHANNEL_MODEL_FK ON JC_CHANNEL (
   MODEL_ID ASC
);
/*==============================================================*/
/* Index: JC_ATTR_CHANNEL_FK                                    */
/*==============================================================*/
CREATE INDEX JC_ATTR_CHANNEL_FK ON JC_CHANNEL_ATTR (
   CHANNEL_ID ASC
);

/*==============================================================*/
/* Index: JC_CHANNEL_USER_FK                                    */
/*==============================================================*/
CREATE INDEX JC_CHANNEL_USER_FK ON JC_CHANNEL_USER (
   CHANNEL_ID ASC
);

/*==============================================================*/
/* Index: JC_USER_CHANNEL_FK                                    */
/*==============================================================*/
CREATE INDEX JC_USER_CHANNEL_FK ON JC_CHANNEL_USER (
   USER_ID ASC
);

/*==============================================================*/
/* Index: JC_CHNL_GROUP_CONTRI_FK                               */
/*==============================================================*/
CREATE INDEX JC_CHNL_GROUP_CONTRI_FK ON JC_CHNL_GROUP_CONTRI (
   CHANNEL_ID ASC
);

/*==============================================================*/
/* Index: JC_GROUP_CHNL_CONTRI_FK                               */
/*==============================================================*/
CREATE INDEX JC_GROUP_CHNL_CONTRI_FK ON JC_CHNL_GROUP_CONTRI (
   GROUP_ID ASC
);


/*==============================================================*/
/* Index: JC_CHNL_GROUP_VIEW_FK                                 */
/*==============================================================*/
CREATE INDEX JC_CHNL_GROUP_VIEW_FK ON JC_CHNL_GROUP_VIEW (
   CHANNEL_ID ASC
);

/*==============================================================*/
/* Index: JC_GROUP_CHNL_VIEW_FK                                 */
/*==============================================================*/
CREATE INDEX JC_GROUP_CHNL_VIEW_FK ON JC_CHNL_GROUP_VIEW (
   GROUP_ID ASC
);
/*==============================================================*/
/* Index: JC_COMMENT_CONTENT_FK                                 */
/*==============================================================*/
CREATE INDEX JC_COMMENT_CONTENT_FK ON JC_COMMENT (
   CONTENT_ID ASC
);

/*==============================================================*/
/* Index: JC_COMMENT_USER_FK                                    */
/*==============================================================*/
CREATE INDEX JC_COMMENT_USER_FK ON JC_COMMENT (
   COMMENT_USER_ID ASC
);

/*==============================================================*/
/* Index: JC_COMMENT_REPLAY_FK                                  */
/*==============================================================*/
CREATE INDEX JC_COMMENT_REPLAY_FK ON JC_COMMENT (
   REPLY_USER_ID ASC
);

/*==============================================================*/
/* Index: JC_COMMENT_SITE_FK                                    */
/*==============================================================*/
CREATE INDEX JC_COMMENT_SITE_FK ON JC_COMMENT (
   SITE_ID ASC
);

/*==============================================================*/
/* Index: JC_ATTR_CONFIG_FK                                     */
/*==============================================================*/
CREATE INDEX JC_ATTR_CONFIG_FK ON JC_CONFIG_ATTR (
   CONFIG_ID ASC
);
/*==============================================================*/
/* Index: JC_CONTENT_SITE_FK                                    */
/*==============================================================*/
CREATE INDEX JC_CONTENT_SITE_FK ON JC_CONTENT (
   SITE_ID ASC
);

/*==============================================================*/
/* Index: JC_CONTENT_USER_FK                                    */
/*==============================================================*/
CREATE INDEX JC_CONTENT_USER_FK ON JC_CONTENT (
   USER_ID ASC
);

/*==============================================================*/
/* Index: JC_CONTENTCHANNEL_FK                                  */
/*==============================================================*/
CREATE INDEX JC_CONTENTCHANNEL_FK ON JC_CONTENT (
   CHANNEL_ID ASC
);

/*==============================================================*/
/* Index: JC_CONTENT_TYPE_FK                                    */
/*==============================================================*/
CREATE INDEX JC_CONTENT_TYPE_FK ON JC_CONTENT (
   TYPE_ID ASC
);

/*==============================================================*/
/* Index: JC_ATTACHMENT_CONTENT_FK                              */
/*==============================================================*/
CREATE INDEX JC_ATTACHMENT_CONTENT_FK ON JC_CONTENT_ATTACHMENT (
   CONTENT_ID ASC
);
/*==============================================================*/
/* Index: JC_ATTR_CONTENT_FK                                    */
/*==============================================================*/
CREATE INDEX JC_ATTR_CONTENT_FK ON JC_CONTENT_ATTR (
   CONTENT_ID ASC
);

/*==============================================================*/
/* Index: JC_CHANNEL_CONTENT_FK                                 */
/*==============================================================*/
CREATE INDEX JC_CHANNEL_CONTENT_FK ON JC_CONTENT_CHANNEL (
   CHANNEL_ID ASC
);

/*==============================================================*/
/* Index: JC_CONTENT_CHANNEL_FK                                 */
/*==============================================================*/
CREATE INDEX JC_CONTENT_CHANNEL_FK ON JC_CONTENT_CHANNEL (
   CONTENT_ID ASC
);
/*==============================================================*/
/* Index: JC_CONTENT_GROUP_VIEW_FK                              */
/*==============================================================*/
CREATE INDEX JC_CONTENT_GROUP_VIEW_FK ON JC_CONTENT_GROUP_VIEW (
   CONTENT_ID ASC
);

/*==============================================================*/
/* Index: JC_GROUP_CONTENT_VIEW_FK                              */
/*==============================================================*/
CREATE INDEX JC_GROUP_CONTENT_VIEW_FK ON JC_CONTENT_GROUP_VIEW (
   GROUP_ID ASC
);
/*==============================================================*/
/* Index: JC_PICTURE_CONTENT_FK                                 */
/*==============================================================*/
CREATE INDEX JC_PICTURE_CONTENT_FK ON JC_CONTENT_PICTURE (
   CONTENT_ID ASC
);
/*==============================================================*/
/* Index: JC_CONTENT_TOPIC_FK                                   */
/*==============================================================*/
CREATE INDEX JC_CONTENT_TOPIC_FK ON JC_CONTENT_TOPIC (
   CONTENT_ID ASC
);

/*==============================================================*/
/* Index: JC_TOPIC_CONTENT_FK                                   */
/*==============================================================*/
CREATE INDEX JC_TOPIC_CONTENT_FK ON JC_CONTENT_TOPIC (
   TOPIC_ID ASC
);
/*==============================================================*/
/* Index: JC_CONTENT_TAG_FK                                     */
/*==============================================================*/
CREATE INDEX JC_CONTENT_TAG_FK ON JC_CONTENTTAG (
   TAG_ID ASC
);

/*==============================================================*/
/* Index: JC_TAG_CONTENT_FK                                     */
/*==============================================================*/
CREATE INDEX JC_TAG_CONTENT_FK ON JC_CONTENTTAG (
   CONTENT_ID ASC
);
/*==============================================================*/
/* Index: JC_GUESTBOOK_SITE_FK                                  */
/*==============================================================*/
CREATE INDEX JC_GUESTBOOK_SITE_FK ON JC_GUESTBOOK (
   SITE_ID ASC
);

/*==============================================================*/
/* Index: JC_CTG_GUESTBOOK_FK                                   */
/*==============================================================*/
CREATE INDEX JC_CTG_GUESTBOOK_FK ON JC_GUESTBOOK (
   GUESTBOOKCTG_ID ASC
);

/*==============================================================*/
/* Index: JC_GUESTBOOK_MEMBER_FK                                */
/*==============================================================*/
CREATE INDEX JC_GUESTBOOK_MEMBER_FK ON JC_GUESTBOOK (
   MEMBER_ID ASC
);

/*==============================================================*/
/* Index: JC_GUESTBOOK_ADMIN_FK                                 */
/*==============================================================*/
CREATE INDEX JC_GUESTBOOK_ADMIN_FK ON JC_GUESTBOOK (
   ADMIN_ID ASC
);
/*==============================================================*/
/* Index: JC_GUESTBOOKCTG_SITE_FK                               */
/*==============================================================*/
CREATE INDEX JC_GUESTBOOKCTG_SITE_FK ON JC_GUESTBOOK_CTG (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_KEYWORD_SITE_FK                                    */
/*==============================================================*/
CREATE INDEX JC_KEYWORD_SITE_FK ON JC_KEYWORD (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_ITEM_MODEL_FK                                      */
/*==============================================================*/
CREATE INDEX JC_ITEM_MODEL_FK ON JC_MODEL_ITEM (
   MODEL_ID ASC
);
/*==============================================================*/
/* Index: JC_ROLE_SITE_FK                                       */
/*==============================================================*/
CREATE INDEX JC_ROLE_SITE_FK ON JC_ROLE (
   SITE_ID ASC
);

/*==============================================================*/
/* Index: JC_PERMISSION_ROLE_FK                                 */
/*==============================================================*/
CREATE INDEX JC_PERMISSION_ROLE_FK ON JC_ROLE_PERMISSION (
   ROLE_ID ASC
);
/*==============================================================*/
/* Index: JC_SITE_CONFIG_FK                                     */
/*==============================================================*/
CREATE INDEX JC_SITE_CONFIG_FK ON JC_SITE (
   CONFIG_ID ASC
);

/*==============================================================*/
/* Index: JC_SITE_UPLOAD_FTP_FK                                 */
/*==============================================================*/
CREATE INDEX JC_SITE_UPLOAD_FTP_FK ON JC_SITE (
   FTP_UPLOAD_ID ASC
);
/*==============================================================*/
/* Index: JC_ATTR_SITE_FK                                       */
/*==============================================================*/
CREATE INDEX JC_ATTR_SITE_FK ON JC_SITE_ATTR (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_CFG_SITE_FK                                        */
/*==============================================================*/
CREATE INDEX JC_CFG_SITE_FK ON JC_SITE_CFG (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_TOPIC_CHANNEL_FK                                   */
/*==============================================================*/
CREATE INDEX JC_TOPIC_CHANNEL_FK ON JC_TOPIC (
   CHANNEL_ID ASC
);
/*==============================================================*/
/* Index: JC_USER_GROUP_FK                                      */
/*==============================================================*/
CREATE INDEX JC_USER_GROUP_FK ON JC_USER (
   GROUP_ID ASC
);

/*==============================================================*/
/* Index: JC_ROLE_USER_FK                                       */
/*==============================================================*/
CREATE INDEX JC_ROLE_USER_FK ON JC_USER_ROLE (
   ROLE_ID ASC
);
/*==============================================================*/
/* Index: JC_USER_ROLE_FK                                       */
/*==============================================================*/
CREATE INDEX JC_USER_ROLE_FK ON JC_USER_ROLE (
   USER_ID ASC
);
/*==============================================================*/
/* Index: JC_SITE_USER_FK                                       */
/*==============================================================*/
CREATE INDEX JC_SITE_USER_FK ON JC_USER_SITE (
   USER_ID ASC
);

/*==============================================================*/
/* Index: JC_USER_SITE_FK                                       */
/*==============================================================*/
CREATE INDEX JC_USER_SITE_FK ON JC_USER_SITE (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_VOTE_ITEM_TOPIC_FK                                 */
/*==============================================================*/
CREATE INDEX JC_VOTE_ITEM_TOPIC_FK ON JC_VOTE_ITEM (
   VOTETOPIC_ID ASC
);
/*==============================================================*/
/* Index: JC_VOTERECORD_USER_FK                                 */
/*==============================================================*/
CREATE INDEX JC_VOTERECORD_USER_FK ON JC_VOTE_RECORD (
   USER_ID ASC
);

/*==============================================================*/
/* Index: JC_VOTE_RECORD_TOPIC_FK                               */
/*==============================================================*/
CREATE INDEX JC_VOTE_RECORD_TOPIC_FK ON JC_VOTE_RECORD (
   VOTETOPIC_ID ASC
);
/*==============================================================*/
/* Index: JC_VOTETOPIC_SITE_FK                                  */
/*==============================================================*/
CREATE INDEX JC_VOTETOPIC_SITE_FK ON JC_VOTE_TOPIC (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_VOTE_REPLY_FK                                        */
/*==============================================================*/
CREATE INDEX JC_VOTE_REPLY_FK ON JC_VOTE_REPLY (
   SUBTOPIC_ID ASC
);

/*==============================================================*/
/* Index: JC_MODEL_CHANNEL_FK                                        */
/*==============================================================*/
CREATE INDEX JC_MODEL_CHANNEL_FK ON JC_CHANNEL_MODEL (
   MODEL_ID ASC
);
/*==============================================================*/
/* Index: JC_MODEL_CONTENT_FK                                        */
/*==============================================================*/
CREATE INDEX JC_MODEL_CONTENT_FK ON JC_CONTENT (
   MODEL_ID ASC
);
/*==============================================================*/
/* Index: JC_USER_JOB_APPLY_FK                                        */
/*==============================================================*/
CREATE INDEX JC_USER_JOB_APPLY_FK ON JC_JOB_APPLY (
   user_id ASC
);
/*==============================================================*/
/* Index: JC_CONTENT_JOB_APPLY_FK                                        */
/*==============================================================*/
CREATE INDEX JC_CONTENT_JOB_APPLY_FK ON JC_JOB_APPLY (
   content_id ASC
);
/*==============================================================*/
/* Index: JC_DEPARTMENT_PARENT_FK                                        */
/*==============================================================*/
CREATE INDEX JC_DEPARTMENT_PARENT_FK ON JC_DEPARTMENT (
   PARENT_ID ASC
);
/*==============================================================*/
/* Index: JC_USER_DEPARTMENT_FK                                        */
/*==============================================================*/
CREATE INDEX JC_USER_DEPARTMENT_FK ON JC_USER (
   DEPART_ID ASC
);
/*==============================================================*/
/* Index: JC_WORKFLOW_SITE_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_SITE_FK ON JC_WORKFLOW (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_WORKFLOW_NODE_ROLE_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_NODE_ROLE_FK ON JC_WORKFLOW_NODE (
   ROLE_ID ASC
);
/*==============================================================*/
/* Index: JC_WORKFLOW_EVENT_USER_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_EVENT_USER_FK ON JC_WORKFLOW_EVENT (
   USER_ID ASC
);

/*==============================================================*/
/* Index: JC_WORKFLOW_USER_EVENT_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_USER_EVENT_FK ON JC_WORKFLOW_EVENT_USER (
   EVENT_ID ASC
);
/*==============================================================*/
/* Index: JC_WORKFLOW_EVENT_USER_USER_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_EVENT_USER_USER_FK ON JC_WORKFLOW_EVENT_USER (
   USER_ID ASC
);
/*==============================================================*/
/* Index: JC_WORKFLOW_RECORD_USER_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_RECORD_USER_FK ON JC_WORKFLOW_RECORD (
   USER_ID ASC
);
/*==============================================================*/
/* Index: JC_WORKFLOW_RECORD_SITE_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_RECORD_SITE_FK ON JC_WORKFLOW_RECORD (
   SITE_ID ASC
);
/*==============================================================*/
/* Index: JC_WORKFLOW_RECORD_EVENT_FK                                        */
/*==============================================================*/
CREATE INDEX JC_WORKFLOW_RECORD_EVENT_FK ON JC_WORKFLOW_RECORD (
   EVENT_ID ASC
);
/*==============================================================*/
/* Index: JC_CHANNEL_WORKFLOW_FK                                        */
/*==============================================================*/
CREATE INDEX JC_CHANNEL_WORKFLOW_FK ON JC_CHANNEL (
   WORKFLOW_ID ASC
);

alter table jc_acquisition add  origin_appoint varchar2(255) ;
COMMENT ON COLUMN jc_acquisition.origin_appoint IS '来源';

alter table jc_site add  tpl_mobile_solution varchar2(50) default 'mobile' NOT NULL ;
COMMENT ON COLUMN jc_site.tpl_mobile_solution IS '手机站模板方案';
alter table jc_site add  mobile_static_dir varchar2(50) default '/wap' ;
COMMENT ON COLUMN jc_site.mobile_static_dir IS '手机站静态页存放目录';
alter table jc_site add  mobile_static_sync number(1) default 0 NOT NULL;
COMMENT ON COLUMN jc_site.mobile_static_sync IS '手机站静态页同步生成';
alter table jc_channel_ext add tpl_mobile_channel varchar2(100) default NULL;
COMMENT ON COLUMN  jc_channel_ext.tpl_mobile_channel IS '手机栏目页模板';
alter table jc_channel_model add tpl_mobile_content varchar2(100) default NULL;
COMMENT ON COLUMN  jc_channel_model.tpl_mobile_content IS '手机内容页模板';
alter table jc_content_ext add tpl_mobile_content varchar2(100) default NULL;
COMMENT ON COLUMN  jc_content_ext.tpl_mobile_content IS '手机内容页模板';
alter table jc_content modify   status number(4)  default 2 ;
COMMENT ON COLUMN jc_content.status IS '状态(0:草稿;1:审核中;2:审核通过;3:回收站;4:投稿;5:归档)';
alter table jc_content_ext add toplevel_date date ; 
COMMENT ON COLUMN jc_content_ext.toplevel_date IS '固顶到期日期';
alter table jc_content_ext add pigeonhole_date date ;
COMMENT ON COLUMN jc_content_ext.pigeonhole_date IS '归档日期';
alter table jc_site add  ftp_sync_page_id number(11) default NULL;
COMMENT ON COLUMN jc_site.ftp_sync_page_id IS '静态页同步FTP';
alter table jc_site add  page_is_sync_ftp number(1) default 0 NOT NULL;
COMMENT ON COLUMN jc_site.page_is_sync_ftp is '静态页同步发布FTP';
alter table jc_site add  resouce_is_sync_ftp number(1) default 0 NOT NULL;
COMMENT ON COLUMN jc_site.resouce_is_sync_ftp is '资源同步发布FTP';
INSERT INTO jc_config_attr VALUES (1,'flowSwitch','true');

CREATE TABLE jc_channel_depart_control (
  channel_id number(11) NOT NULL,
  department_id number(11) NOT NULL
);
ALTER TABLE jc_channel_depart_control ADD CONSTRAINT pk_jc_channel_depart_control primary key (channel_id,department_id);
ALTER TABLE jc_channel_depart_control ADD CONSTRAINT fk_jc_channel_depart_control FOREIGN KEY (department_id) REFERENCES jc_department (depart_id);
ALTER TABLE jc_channel_depart_control ADD CONSTRAINT fk_jc_depart_control_channel FOREIGN KEY (channel_id) REFERENCES jc_channel (channel_id);
COMMENT ON TABLE jc_channel_depart_control IS
'CMS部门栏目数据权限关联表';
alter table jc_user_site add  is_all_channel_control number(1) default 1 NOT NULL ;
COMMENT ON COLUMN jc_user_site.is_all_channel_control is '所有栏目控制权限';

CREATE TABLE jg_weixin (
  site_id number(11) DEFAULT 0 NOT NULL ,
  wx_pic varchar2(255) DEFAULT NULL,
  wx_welcome varchar(255) DEFAULT '' NOT NULL 
);
COMMENT ON TABLE jg_weixin is '微信配置表';
COMMENT ON COLUMN jg_weixin.wx_pic is '微信二维码';
COMMENT ON COLUMN jg_weixin.wx_welcome is '关注欢迎语';
ALTER TABLE jg_weixin ADD CONSTRAINT pk_jg_weixin primary key (site_id);


CREATE TABLE jg_weixinmenu (
  wm_id number(11) NOT NULL,
  site_id number(11) DEFAULT 0 NOT NULL,
  wm_name varchar2(255) DEFAULT NULL,
  wm_type varchar2(255) DEFAULT NULL,
  wm_url varchar2(255) DEFAULT NULL,
  wm_key varchar2(255) DEFAULT NULL,
  wm_parent_id number(11) DEFAULT NULL 
);
COMMENT ON TABLE jg_weixinmenu is '微信配置表';
COMMENT ON COLUMN jg_weixinmenu.site_id is '站点ID';
COMMENT ON COLUMN jg_weixinmenu.wm_name is '微信菜单名称';
COMMENT ON COLUMN jg_weixinmenu.wm_type is '微信菜单类别';
COMMENT ON COLUMN jg_weixinmenu.wm_url is '链接地址';
COMMENT ON COLUMN jg_weixinmenu.wm_key is '点击key';
COMMENT ON COLUMN jg_weixinmenu.wm_parent_id is '父节点';
ALTER TABLE jg_weixinmenu ADD CONSTRAINT pk_jg_weixinmenu primary key (wm_id);

CREATE SEQUENCE S_JG_WEIXINMENU  start with 15;

CREATE TABLE jg_weixinmessage (
  wm_id number(11) NOT NULL,
  site_id number(11) NOT NULL  ,
  wm_number varchar2(255) DEFAULT NULL ,
  wm_title varchar2(255) DEFAULT NULL,
  wm_path varchar2(255) DEFAULT NULL,
  wm_url varchar2(255) DEFAULT NULL,
  wm_content varchar2(255) DEFAULT NULL,
  is_welcome number(1) DEFAULT 0 NOT NULL ,
  wm_msg_type number(1) DEFAULT 0 NOT NULL
);
COMMENT ON TABLE jg_weixinmessage is '微信消息配置表';
COMMENT ON COLUMN jg_weixinmessage.site_id is '站点ID';
COMMENT ON COLUMN jg_weixinmessage.wm_number is '序号';
COMMENT ON COLUMN jg_weixinmessage.wm_title is '标题';
COMMENT ON COLUMN jg_weixinmessage.wm_path is '图片地址';
COMMENT ON COLUMN jg_weixinmessage.wm_url is '链接地址';
COMMENT ON COLUMN jg_weixinmessage.wm_content is '内容';
COMMENT ON COLUMN jg_weixinmessage.is_welcome is '是否关注消息';
COMMENT ON COLUMN jg_weixinmessage.wm_msg_type is '消息类型(0带图文链接 1内容加关键字提示 2仅有内容)';
ALTER TABLE jg_weixinmessage ADD CONSTRAINT pk_jg_weixinmessage primary key (wm_id);
CREATE SEQUENCE S_JG_WEIXINMESSAGE  start with 3;


INSERT INTO jc_config_attr (config_id,attr_name,attr_value) VALUES (1,'contentFreshMinute','5');
CREATE TABLE jc_content_record (
  content_record_id number(20) NOT NULL,
  content_id number(11) default   0  NOT NULL,
  user_id number(11) default   0  NOT NULL,
  operate_time date NOT NULL,
  operate_type number(2) default   0  NOT NULL
);
COMMENT ON TABLE jc_content_record is '文章操作记录';
COMMENT ON COLUMN jc_content_record.content_id is '文章ID';
COMMENT ON COLUMN jc_content_record.user_id is '操作人';
COMMENT ON COLUMN jc_content_record.operate_time is '操作时间';
COMMENT ON COLUMN jc_content_record.operate_type is '0 新增 1修改 2审核 3退回 4移动 5生成静态页 6删除到回收站 7归档 8出档 9推送共享';
CREATE SEQUENCE S_JC_CONTENT_RECORD  start with 1;
ALTER TABLE jc_content_record ADD CONSTRAINT pk_jc_content_record primary key (content_record_id);
ALTER TABLE jc_content_record ADD CONSTRAINT FK_JC_RECORD_CONTENT FOREIGN KEY (content_id) REFERENCES JC_CONTENT (content_id);
ALTER TABLE jc_content_record ADD CONSTRAINT FK_JC_CONTENT_RECORD_USER FOREIGN KEY (user_id) REFERENCES JC_USER (user_id);
CREATE TABLE jc_topic_channel (
  topic_id number(11) NOT NULL ,
  channel_id number(11) NOT NULL
);
ALTER TABLE jc_topic_channel ADD CONSTRAINT pk_jc_topic_channel primary key (topic_id,channel_id);
ALTER TABLE jc_topic_channel ADD CONSTRAINT fk_jc_topic_channel_topic FOREIGN KEY (topic_id) REFERENCES jc_topic (topic_id);
ALTER TABLE jc_topic_channel ADD CONSTRAINT fk_jc_topic_channel_channel FOREIGN KEY (channel_id) REFERENCES jc_channel (channel_id);
insert into jc_topic_channel(topic_id,channel_id) select topic_id,channel_id from jc_topic where channel_id is not null;

alter table jc_workflow  add   is_cross number(1)   default 1 NOT NULL;
COMMENT ON COLUMN jc_workflow.is_cross is '是否允许跨级审核';
alter table jc_model_item  add   is_required number(1)  default 0 NOT NULL;
COMMENT ON COLUMN jc_model_item.is_required is '是否必填项';
update jc_model_item set is_required=1 where field='name';
update jc_model_item set is_required=1 where field='path';
update jc_model_item set is_required=1 where field='title';
update jc_model_item set is_required=1 where field='channelId';
alter table jc_model  add   is_global number(1) default 1 NOT NULL;
COMMENT ON COLUMN jc_model.is_global is '是否全站模型';
alter table jc_model  add   site_id number(11);
COMMENT ON COLUMN jc_model.site_id is '非全站模型所属站点';
alter table jc_config  add   flow_clear_time date default sysdate NOT NULL;
COMMENT ON COLUMN jc_config.flow_clear_time is '流量统计清除时间';
update jc_config set flow_clear_time=sysdate;
alter table jc_model_item  add  image_width number(11);
COMMENT ON COLUMN jc_model_item.image_width is '图片宽度';
alter table jc_model_item  add  image_height number(11);
COMMENT ON COLUMN jc_model_item.image_height is '图片宽度';

alter table jc_content  add  recommend_level  number(4)  default 0 NOT NULL;
COMMENT ON COLUMN jc_content.recommend_level is '推荐级别';
alter table jc_search_words  add  is_recommend  number(1)  default 0 NOT NULL;
COMMENT ON COLUMN jc_search_words.is_recommend is '推荐';
alter table jc_search_words  add  site_id  number(11)  default 1 NOT NULL ;
COMMENT ON COLUMN jc_search_words.site_id is '站点';

alter table jc_comment  add  parent_id  number(11);
COMMENT ON COLUMN jc_comment.parent_id is '父级评论';
alter table jc_comment  add  reply_count  number(11) default 0 ;
COMMENT ON COLUMN jc_comment.reply_count is '回复数';
COMMENT ON COLUMN jc_channel_ext.comment_control is '评论(0:匿名;1:会员一次;2:关闭,3会员多次)';
alter table jc_vote_item  add  picture  varchar2(255);
COMMENT ON COLUMN jc_vote_item.picture is '图片';

alter table jc_vote_topic  add  limit_weixin number(1)  default 0 ;
COMMENT ON COLUMN jc_vote_topic.limit_weixin is '是否限制微信';
alter table jc_vote_topic  add  vote_day number(11)   default 0 ;
COMMENT ON COLUMN jc_vote_topic.vote_day is '限定微信投票每个用户每日投票次数,为0时则投票期内限定投票一次';
alter table jc_vote_record  add  wx_open_id  varchar2(50); 
COMMENT ON COLUMN jc_vote_record.wx_open_id is '微信投票者openId';

alter table jc_channel_count  add content_count_total number(11)  default 0  NOT NULL;
COMMENT ON COLUMN jc_channel_count.content_count_total is '内容发布数';
alter table jc_channel_count  add content_count_day  number(11)  default 0  NOT NULL;
alter table jc_channel_count  add content_count_week  number(11)  default 0 NOT NULL;
alter table jc_channel_count  add content_count_month  number(11)  default 0 NOT NULL;
alter table jc_channel_count  add content_count_year  number(11)   default 0 NOT NULL;
COMMENT ON COLUMN jc_channel_count.content_count_day is '内容今日发布数';
COMMENT ON COLUMN jc_channel_count.content_count_week is '内容本周发布数';
COMMENT ON COLUMN jc_channel_count.content_count_month is '内容本月发布数';
COMMENT ON COLUMN jc_channel_count.content_count_year is '内容今年发布数';

update jc_channel_count a set content_count_total=(select count(content_id) from jc_content b where  a.channel_id=b.channel_id);
update jc_channel_count a set content_count_day=(select count(content_id) from jc_content b where  b.sort_date> ( SELECT trunc(sysdate,'dd') FROM dual ) and b.sort_date< (SELECT trunc(sysdate,'dd')+1 FROM dual) and a.channel_id=b.channel_id);
update jc_channel_count a set content_count_week=(select count(content_id) from jc_content b where  b.sort_date> (  select  trunc(sysdate,'d')+1 from dual )  and a.channel_id=b.channel_id);
update jc_channel_count a set content_count_month=(select count(content_id) from jc_content b where  b.sort_date> ( select trunc(sysdate,'mm') from dual )  and a.channel_id=b.channel_id);
update jc_channel_count a set content_count_year=(select count(content_id) from jc_content b where   b.sort_date> ( select  trunc(sysdate,'yyyy') from dual)  and a.channel_id=b.channel_id);

alter table jc_config  add  channel_count_clear_time date default sysdate NOT NULL;
COMMENT ON COLUMN jc_config.channel_count_clear_time is '栏目发布内容计数器清除时间';

CREATE TABLE jc_plug_store_config (
  config_id number(11)  default 1 NOT NULL,
  server_url varchar2(255) default ''  NOT NULL,
  password varchar2(255) default ''  NOT NULL
);
ALTER TABLE jc_plug_store_config ADD CONSTRAINT pk_jc_plug_store_config primary key (config_id);
COMMENT ON COLUMN jc_plug_store_config.server_url is '接口根地址';
COMMENT ON COLUMN jc_plug_store_config.password is '应用商店密码';

CREATE TABLE jc_content_buy (
  content_buy_id number(20) NOT NULL,
  order_number varchar2(50) default ''  NOT NULL,
  content_id number(11) NOT NULL,
  buy_user_id number(11),
  author_user_id number(11) NOT NULL,
  charge_amount number(11,2)  default 0.00 NOT NULL,
  author_amount number(11,4)  default 0.0000 NOT NULL,
  plat_amount number(11,4)  default 0.0000 NOT NULL,
  buy_time date  default sysdate NOT NULL,
  has_paid_author number(1) default   0  NOT NULL,
  order_num_weixin varchar2(255) default NULL,
  order_num_alipay varchar2(100) default NULL,
  charge_reward number(1)  default 1 NOT NULL
);
CREATE SEQUENCE S_JC_CONTENT_BUY  start with 1;
COMMENT ON TABLE jc_content_buy is '收费文章购买记录';
COMMENT ON COLUMN jc_content_buy.order_number is '订单号';
COMMENT ON COLUMN jc_content_buy.content_id is '内容ID';
COMMENT ON COLUMN jc_content_buy.buy_user_id is '购买用户ID';
COMMENT ON COLUMN jc_content_buy.author_user_id is '笔者ID';
COMMENT ON COLUMN jc_content_buy.charge_amount is '成交金额';
COMMENT ON COLUMN jc_content_buy.author_amount is '笔者所得';
COMMENT ON COLUMN jc_content_buy.plat_amount is '平台所得';
COMMENT ON COLUMN jc_content_buy.buy_time is '成交时间';
COMMENT ON COLUMN jc_content_buy.has_paid_author is '是否已经结算给作者(0未结算 1已经结算)';
COMMENT ON COLUMN jc_content_buy.order_num_weixin is '微信支付订单号';
COMMENT ON COLUMN jc_content_buy.order_num_alipay is '支付宝订单号';
COMMENT ON COLUMN jc_content_buy.charge_reward is '模式 1收费 2打赏';
ALTER TABLE jc_content_buy ADD CONSTRAINT pk_jc_content_buy primary key (content_buy_id);

CREATE TABLE jc_content_charge (
  content_id number(11) default   0  NOT NULL ,
  charge_amount number(11,2) default 0.00 NOT NULL,
  total_amount number(11,2)  default 0.00 NOT NULL,
  year_amount number(11,2)  default 0.00 NOT NULL,
  month_amount number(11,2) default 0.00 NOT NULL,
  day_amount number(11,2)  default 0.00 NOT NULL,
  last_buy_time date  default sysdate,
  charge_reward number(1) default   0  NOT NULL
);
COMMENT ON TABLE jc_content_charge is '收费内容配置';
COMMENT ON COLUMN jc_content_charge.charge_amount is '收费金额';
COMMENT ON COLUMN jc_content_charge.total_amount is '已累计收费';
COMMENT ON COLUMN jc_content_charge.year_amount is '年金额';
COMMENT ON COLUMN jc_content_charge.month_amount is '月金额';
COMMENT ON COLUMN jc_content_charge.day_amount is '日金额';
COMMENT ON COLUMN jc_content_charge.last_buy_time is '最后购买时间';
COMMENT ON COLUMN jc_content_charge.charge_reward is '模式，1收费 2打赏';
ALTER TABLE jc_content_charge ADD CONSTRAINT pk_jc_content_charge primary key (content_id);


CREATE TABLE jc_config_content_charge (
  config_content_id number(11) default 1  NOT NULL ,
  weixin_appid varchar2(255) default ''  NOT NULL,
  weixin_secret varchar2(50) default ''  NOT NULL,
  weixin_account varchar2(255) default ''  NOT NULL,
  weixin_password varchar2(255) default ''  NOT NULL,
  alipay_partner_id varchar2(255) default NULL,
  alipay_account varchar2(255) default NULL,
  alipay_key varchar2(1000) default NULL,
  alipay_appid varchar2(255) default NULL,
  alipay_public_key varchar2(255) default '',
  alipay_private_key varchar2(1000)  default NULL,
  charge_ratio number(2,2) default 0.00 NOT NULL,
  min_draw_amount number(11,2) default 1.00 NOT NULL,
  commission_total number(15,4) default 0.00 NOT NULL,
  commission_year number(15,4)  default 0.00 NOT NULL,
  commission_month number(15,4)  default 0.00 NOT NULL,
  commission_day number(15,4)  default 0.00 NOT NULL,
  last_buy_time date  default sysdate ,
  pay_transfer_password varchar2(100) default '5f4dcc3b5aa765d61d8327deb882cf99' NOT NULL ,
  transfer_api_password varchar2(100) default ''  NOT NULL,
  reward_min number(11,2)  default 0.00 NOT NULL,
  reward_max number(11,2)  default 0.00 NOT NULL
);
COMMENT ON TABLE jc_config_content_charge is '内容收费配置';
COMMENT ON COLUMN jc_config_content_charge.weixin_appid is '微信服务号APPID';
COMMENT ON COLUMN jc_config_content_charge.weixin_secret is '微信公众号secret';
COMMENT ON COLUMN jc_config_content_charge.weixin_account is '微信支付商户号';
COMMENT ON COLUMN jc_config_content_charge.weixin_password is '微信支付商户密钥';
COMMENT ON COLUMN jc_config_content_charge.alipay_partner_id is '支付宝合作者ID';
COMMENT ON COLUMN jc_config_content_charge.alipay_account is '支付宝签约账户';
COMMENT ON COLUMN jc_config_content_charge.alipay_key is '支付宝公钥';
COMMENT ON COLUMN jc_config_content_charge.alipay_appid is '支付宝应用ID';
COMMENT ON COLUMN jc_config_content_charge.alipay_public_key is '支付宝RSA公钥';
COMMENT ON COLUMN jc_config_content_charge.alipay_private_key is '支付宝RSA私钥';
COMMENT ON COLUMN jc_config_content_charge.charge_ratio is '抽成比例';
COMMENT ON COLUMN jc_config_content_charge.min_draw_amount is '最小提现额';
COMMENT ON COLUMN jc_config_content_charge.commission_total is '佣金抽成总金额';
COMMENT ON COLUMN jc_config_content_charge.commission_year is '佣金抽成年金额';
COMMENT ON COLUMN jc_config_content_charge.commission_month is '佣金抽成月金额';
COMMENT ON COLUMN jc_config_content_charge.commission_day is '佣金抽成日金额';
COMMENT ON COLUMN jc_config_content_charge.last_buy_time is '最后购买时间';
COMMENT ON COLUMN jc_config_content_charge.pay_transfer_password is '转账支付密码（管理后台验证）';
COMMENT ON COLUMN jc_config_content_charge.transfer_api_password is '企业转账接口API密钥';
COMMENT ON COLUMN jc_config_content_charge.reward_min is '打赏随机数最小值';
COMMENT ON COLUMN jc_config_content_charge.reward_max is '打赏随机数最小值';
ALTER TABLE jc_config_content_charge ADD CONSTRAINT pk_jc_config_content_charge primary key (config_content_id);

CREATE TABLE jc_user_account (
  user_id number(11) NOT NULL ,
  account_weixin varchar2(255) default NULL,
  account_weixin_openId varchar2(255) default NULL,
  account_alipy varchar2(255) default NULL,
  draw_account number(1) default   0  NOT NULL,
  content_total_amount number(11,4) default 0.00,
  content_no_pay_amount number(11,4) default 0.00,
  content_year_amount number(11,4) default 0.00 NOT NULL,
  content_month_amount number(11,4) default 0.00 NOT NULL,
  content_day_amount number(11,4) default 0.00  NOT NULL,
  content_buy_count number(11) default NULL,
  draw_count number(11) default  0 ,
  last_draw_time date  default sysdate,
  last_buy_time date  default NULL
);
COMMENT ON TABLE jc_user_account is '用户账户';
COMMENT ON COLUMN jc_user_account.account_weixin is '微信账号名';
COMMENT ON COLUMN jc_user_account.account_weixin_openId is '微信账号openid';
COMMENT ON COLUMN jc_user_account.account_alipy is '支付宝账号';
COMMENT ON COLUMN jc_user_account.draw_account is '提现账户(0微信 1支付宝)';
COMMENT ON COLUMN jc_user_account.content_total_amount is '稿费总金额';
COMMENT ON COLUMN jc_user_account.content_no_pay_amount is '待提现稿费金额';
COMMENT ON COLUMN jc_user_account.content_year_amount is '稿费年金额';
COMMENT ON COLUMN jc_user_account.content_month_amount is '稿费本月金额';
COMMENT ON COLUMN jc_user_account.content_day_amount is '稿费本日金额';
COMMENT ON COLUMN jc_user_account.content_buy_count is '被用户购买次数';
COMMENT ON COLUMN jc_user_account.draw_count is '累计提现次数';
COMMENT ON COLUMN jc_user_account.last_draw_time is '上次提现时间';
COMMENT ON COLUMN jc_user_account.last_buy_time is '上次用户购买时间';
ALTER TABLE jc_user_account ADD CONSTRAINT pk_jc_user_account primary key (user_id);

CREATE TABLE jc_account_draw (
  account_draw_id number(11) NOT NULL,
  draw_user_id number(11) default   0  NOT NULL,
  apply_account varchar2(100) default '' ,
  apply_amount number(11,2) default   0  NOT NULL,
  apply_status number(1) default   0  NOT NULL,
  account_pay_id number(11) default NULL,
  apply_time date default sysdate NOT NULL 
);
CREATE SEQUENCE S_JC_ACCOUNT_DRAW  start with 1;
COMMENT ON TABLE jc_account_draw is '用户账户提现申请';
COMMENT ON COLUMN jc_account_draw.draw_user_id is '提现申请者';
COMMENT ON COLUMN jc_account_draw.apply_account is '申请账户（微信号或支付宝账户）';
COMMENT ON COLUMN jc_account_draw.apply_amount is '提现申请金额';
COMMENT ON COLUMN jc_account_draw.apply_status is '处理状态(0申请中 1申请成功待支付 2申请失败 3提现成功)';
COMMENT ON COLUMN jc_account_draw.account_pay_id is '申请成功后支付ID';
COMMENT ON COLUMN jc_account_draw.apply_time is '申请时间';
ALTER TABLE jc_account_draw ADD CONSTRAINT pk_jc_account_draw primary key (account_draw_id);

CREATE TABLE jc_account_pay (
  account_pay_id number(20) NOT NULL,
  draw_num varchar2(50) default ''  NOT NULL,
  pay_user_id number(11) default   0  NOT NULL,
  draw_user_id number(11) default   0  NOT NULL,
  pay_account varchar2(100) default ''  NOT NULL,
  draw_account varchar2(100) default ''  NOT NULL,
  pay_time date default sysdate NOT NULL ,
  weixin_num varchar2(100) default NULL,
  alipay_num varchar2(100) default NULL
);
CREATE SEQUENCE S_JC_ACCOUNT_PAY  start with 1;
COMMENT ON TABLE jc_account_pay is '用户账户提现支付';
COMMENT ON COLUMN jc_account_pay.draw_num is '内部流水号';
COMMENT ON COLUMN jc_account_pay.pay_user_id is '支付者';
COMMENT ON COLUMN jc_account_pay.draw_user_id is '提现者';
COMMENT ON COLUMN jc_account_pay.pay_account is '支出账户';
COMMENT ON COLUMN jc_account_pay.draw_account is '收入账户(微信账户名)';
COMMENT ON COLUMN jc_account_pay.pay_time is '支付时间';
COMMENT ON COLUMN jc_account_pay.weixin_num is '微信流水号';
COMMENT ON COLUMN jc_account_pay.alipay_num is '支付宝流水号';
ALTER TABLE jc_account_pay ADD CONSTRAINT pk_jc_account_pay primary key (account_pay_id);

INSERT INTO jc_config_attr  VALUES (1,'codeImgWidth',100);
INSERT INTO jc_config_attr  VALUES (1,'codeImgHeight',100);
alter table jc_plug add plug_repair number(1)  default 0 NOT NULL;
COMMENT ON COLUMN jc_plug.plug_repair is  '是否修复类插件(0 新功能插件 1修复类)';

alter table jc_content_doc add pdf_path varchar2(255)  default '';
COMMENT ON COLUMN jc_content_doc.pdf_path is  '转换后pdf路径';

alter table jc_content_ext  modify   release_date timestamp;
alter table jc_user modify register_time timestamp;
alter table jc_guestbook  modify create_time timestamp;
alter table jc_comment  modify create_time timestamp;


alter table jc_config_content_charge  add   reward_pattern number(1)  default 0  NOT NULL;
COMMENT ON COLUMN jc_config_content_charge.reward_pattern is '打赏模式(0随机 1固定)';
alter table jc_content_charge  add   reward_random_min number(11,2)  default 0 NOT NULL;
COMMENT ON COLUMN jc_content_charge.reward_random_min is '随机 最小值';
alter table jc_content_charge  add   reward_random_max number(11,2)  default 0 NOT NULL;
COMMENT ON COLUMN jc_content_charge.reward_random_max is '随机 最大值';
alter table jc_content_charge  add   reward_pattern number(1)  default 0 NOT NULL ;
COMMENT ON COLUMN jc_content_charge.reward_pattern is '打赏模式(0随机 1固定)';

CREATE INDEX index_content_top_level_sort ON jc_content(top_level,sort_date); 
CREATE INDEX index_content_status ON jc_content(status); 
CREATE INDEX index_content_sort_date ON jc_content(sort_date); 
CREATE INDEX index_content_is_recom ON jc_content(is_recommend); 
CREATE INDEX index_content_recom_level ON jc_content(recommend_level); 

CREATE INDEX index_jc_channel_lft ON jc_channel(lft); 
CREATE INDEX index_jc_channel_rgt ON jc_channel(rgt); 

CREATE INDEX index_content_views_day ON jc_content_count(views_day); 
CREATE INDEX index_content_views_week ON jc_content_count(views_week); 
CREATE INDEX index_content_views_month ON jc_content_count(views_month);
CREATE INDEX index_content_views ON jc_content_count(views);
CREATE INDEX index_content_comments_day ON jc_content_count(comments_day);
CREATE INDEX index_content_comments_mon ON jc_content_count(comments_month);
CREATE INDEX index_content_comments_week ON jc_content_count(comments_week);
CREATE INDEX index_content_comments ON jc_content_count(comments);
CREATE INDEX index_content_down_day ON jc_content_count(downloads_day);
CREATE INDEX index_content_down_month ON jc_content_count(downloads_month);
CREATE INDEX index_content_down_week ON jc_content_count(downloads_week);
CREATE INDEX index_content_downs ON jc_content_count(downloads);
CREATE INDEX index_content_ups_day ON jc_content_count(ups_day);
CREATE INDEX index_content_ups_week ON jc_content_count(ups_week);
CREATE INDEX index_content_ups_month ON jc_content_count(ups_month);
CREATE INDEX index_content_ups ON jc_content_count(ups);