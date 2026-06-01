{/// <summary>
/// 翻译自ThostFtdcUserApiStruct.h
/// </summary>
/// <author>dzgycbs</author>
/// <date>2026-06-01</date>
}

unit ThostFtdcUserApiStruct;

interface

uses
  Classes, ThostFtdcUserApiDataType;

type

///信息分发
CThostFtdcDisseminationField = record
  ///序列系列号
  SequenceSeries : TThostFtdcSequenceSeriesType;
  ///序列号
  SequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcDisseminationField = ^CThostFtdcDisseminationField;

///用户登录请求
CThostFtdcReqUserLoginField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///接口端产品信息
  InterfaceProductInfo : TThostFtdcProductInfoType;
  ///协议信息
  ProtocolInfo : TThostFtdcProtocolInfoType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///动态密码
  OneTimePassword : TThostFtdcPasswordType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///登录备注
  LoginRemark : TThostFtdcLoginRemarkType;
  ///终端IP端口
  ClientIPPort : TThostFtdcIPPortType;
  ///终端IP地址
  ClientIPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcReqUserLoginField = ^CThostFtdcReqUserLoginField;

///用户登录应答
CThostFtdcRspUserLoginField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///登录成功时间
  LoginTime : TThostFtdcTimeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///交易系统名称
  SystemName : TThostFtdcSystemNameType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///最大报单引用
  MaxOrderRef : TThostFtdcOrderRefType;
  ///上期所时间
  SHFETime : TThostFtdcTimeType;
  ///大商所时间
  DCETime : TThostFtdcTimeType;
  ///郑商所时间
  CZCETime : TThostFtdcTimeType;
  ///中金所时间
  FFEXTime : TThostFtdcTimeType;
  ///能源中心时间
  INETime : TThostFtdcTimeType;
  ///后台版本信息
  SysVersion : TThostFtdcSysVersionType;
  ///广期所时间
  GFEXTime : TThostFtdcTimeType;
end;
pCThostFtdcRspUserLoginField = ^CThostFtdcRspUserLoginField;

///用户登出请求
CThostFtdcUserLogoutField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcUserLogoutField = ^CThostFtdcUserLogoutField;

///强制交易员退出
CThostFtdcForceUserLogoutField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcForceUserLogoutField = ^CThostFtdcForceUserLogoutField;

///客户端认证请求
CThostFtdcReqAuthenticateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///认证码
  AuthCode : TThostFtdcAuthCodeType;
  ///App代码
  AppID : TThostFtdcAppIDType;
end;
pCThostFtdcReqAuthenticateField = ^CThostFtdcReqAuthenticateField;

///客户端认证响应
CThostFtdcRspAuthenticateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///App代码
  AppID : TThostFtdcAppIDType;
  ///App类型
  AppType : TThostFtdcAppTypeType;
end;
pCThostFtdcRspAuthenticateField = ^CThostFtdcRspAuthenticateField;

///客户端认证信息
CThostFtdcAuthenticationInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///认证信息
  AuthInfo : TThostFtdcAuthInfoType;
  ///是否为认证结果
  IsResult : TThostFtdcBoolType;
  ///App代码
  AppID : TThostFtdcAppIDType;
  ///App类型
  AppType : TThostFtdcAppTypeType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///终端IP地址
  ClientIPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcAuthenticationInfoField = ^CThostFtdcAuthenticationInfoField;

///用户登录应答2
CThostFtdcRspUserLogin2Field = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///登录成功时间
  LoginTime : TThostFtdcTimeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///交易系统名称
  SystemName : TThostFtdcSystemNameType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///最大报单引用
  MaxOrderRef : TThostFtdcOrderRefType;
  ///上期所时间
  SHFETime : TThostFtdcTimeType;
  ///大商所时间
  DCETime : TThostFtdcTimeType;
  ///郑商所时间
  CZCETime : TThostFtdcTimeType;
  ///中金所时间
  FFEXTime : TThostFtdcTimeType;
  ///能源中心时间
  INETime : TThostFtdcTimeType;
  ///随机串
  RandomString : TThostFtdcRandomStringType;
end;
pCThostFtdcRspUserLogin2Field = ^CThostFtdcRspUserLogin2Field;

///银期转帐报文头
CThostFtdcTransferHeaderField = record
  ///版本号，常量，1.0
  Version : TThostFtdcVersionType;
  ///交易代码，必填
  TradeCode : TThostFtdcTradeCodeType;
  ///交易日期，必填，格式：yyyymmdd
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间，必填，格式：hhmmss
  TradeTime : TThostFtdcTradeTimeType;
  ///发起方流水号，N/A
  TradeSerial : TThostFtdcTradeSerialType;
  ///期货公司代码，必填
  FutureID : TThostFtdcFutureIDType;
  ///银行代码，根据查询银行得到，必填
  BankID : TThostFtdcBankIDType;
  ///银行分中心代码，根据查询银行得到，必填
  BankBrchID : TThostFtdcBankBrchIDType;
  ///操作员，N/A
  OperNo : TThostFtdcOperNoType;
  ///交易设备类型，N/A
  DeviceID : TThostFtdcDeviceIDType;
  ///记录数，N/A
  RecordNum : TThostFtdcRecordNumType;
  ///会话编号，N/A
  SessionID : TThostFtdcSessionIDType;
  ///请求编号，N/A
  RequestID : TThostFtdcRequestIDType;
end;
pCThostFtdcTransferHeaderField = ^CThostFtdcTransferHeaderField;

///银行资金转期货请求，TradeCode=202001
CThostFtdcTransferBankToFutureReqField = record
  ///期货资金账户
  FutureAccount : TThostFtdcAccountIDType;
  ///密码标志
  FuturePwdFlag : TThostFtdcFuturePwdFlagType;
  ///密码
  FutureAccPwd : TThostFtdcFutureAccPwdType;
  ///转账金额
  TradeAmt : TThostFtdcMoneyType;
  ///客户手续费
  CustFee : TThostFtdcMoneyType;
  ///币种：RMB-人民币 USD-美圆 HKD-港元
  CurrencyCode : TThostFtdcCurrencyCodeType;
end;
pCThostFtdcTransferBankToFutureReqField = ^CThostFtdcTransferBankToFutureReqField;

///银行资金转期货请求响应
CThostFtdcTransferBankToFutureRspField = record
  ///响应代码
  RetCode : TThostFtdcRetCodeType;
  ///响应信息
  RetInfo : TThostFtdcRetInfoType;
  ///资金账户
  FutureAccount : TThostFtdcAccountIDType;
  ///转帐金额
  TradeAmt : TThostFtdcMoneyType;
  ///应收客户手续费
  CustFee : TThostFtdcMoneyType;
  ///币种
  CurrencyCode : TThostFtdcCurrencyCodeType;
end;
pCThostFtdcTransferBankToFutureRspField = ^CThostFtdcTransferBankToFutureRspField;

///期货资金转银行请求，TradeCode=202002
CThostFtdcTransferFutureToBankReqField = record
  ///期货资金账户
  FutureAccount : TThostFtdcAccountIDType;
  ///密码标志
  FuturePwdFlag : TThostFtdcFuturePwdFlagType;
  ///密码
  FutureAccPwd : TThostFtdcFutureAccPwdType;
  ///转账金额
  TradeAmt : TThostFtdcMoneyType;
  ///客户手续费
  CustFee : TThostFtdcMoneyType;
  ///币种：RMB-人民币 USD-美圆 HKD-港元
  CurrencyCode : TThostFtdcCurrencyCodeType;
end;
pCThostFtdcTransferFutureToBankReqField = ^CThostFtdcTransferFutureToBankReqField;

///期货资金转银行请求响应
CThostFtdcTransferFutureToBankRspField = record
  ///响应代码
  RetCode : TThostFtdcRetCodeType;
  ///响应信息
  RetInfo : TThostFtdcRetInfoType;
  ///资金账户
  FutureAccount : TThostFtdcAccountIDType;
  ///转帐金额
  TradeAmt : TThostFtdcMoneyType;
  ///应收客户手续费
  CustFee : TThostFtdcMoneyType;
  ///币种
  CurrencyCode : TThostFtdcCurrencyCodeType;
end;
pCThostFtdcTransferFutureToBankRspField = ^CThostFtdcTransferFutureToBankRspField;

///查询银行资金请求，TradeCode=204002
CThostFtdcTransferQryBankReqField = record
  ///期货资金账户
  FutureAccount : TThostFtdcAccountIDType;
  ///密码标志
  FuturePwdFlag : TThostFtdcFuturePwdFlagType;
  ///密码
  FutureAccPwd : TThostFtdcFutureAccPwdType;
  ///币种：RMB-人民币 USD-美圆 HKD-港元
  CurrencyCode : TThostFtdcCurrencyCodeType;
end;
pCThostFtdcTransferQryBankReqField = ^CThostFtdcTransferQryBankReqField;

///查询银行资金请求响应
CThostFtdcTransferQryBankRspField = record
  ///响应代码
  RetCode : TThostFtdcRetCodeType;
  ///响应信息
  RetInfo : TThostFtdcRetInfoType;
  ///资金账户
  FutureAccount : TThostFtdcAccountIDType;
  ///银行余额
  TradeAmt : TThostFtdcMoneyType;
  ///银行可用余额
  UseAmt : TThostFtdcMoneyType;
  ///银行可取余额
  FetchAmt : TThostFtdcMoneyType;
  ///币种
  CurrencyCode : TThostFtdcCurrencyCodeType;
end;
pCThostFtdcTransferQryBankRspField = ^CThostFtdcTransferQryBankRspField;

///查询银行交易明细请求，TradeCode=204999
CThostFtdcTransferQryDetailReqField = record
  ///期货资金账户
  FutureAccount : TThostFtdcAccountIDType;
end;
pCThostFtdcTransferQryDetailReqField = ^CThostFtdcTransferQryDetailReqField;

///查询银行交易明细请求响应
CThostFtdcTransferQryDetailRspField = record
  ///交易日期
  TradeDate : TThostFtdcDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///交易代码
  TradeCode : TThostFtdcTradeCodeType;
  ///期货流水号
  FutureSerial : TThostFtdcTradeSerialNoType;
  ///期货公司代码
  FutureID : TThostFtdcFutureIDType;
  ///资金帐号
  FutureAccount : TThostFtdcFutureAccountType;
  ///银行流水号
  BankSerial : TThostFtdcTradeSerialNoType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分中心代码
  BankBrchID : TThostFtdcBankBrchIDType;
  ///银行账号
  BankAccount : TThostFtdcBankAccountType;
  ///证件号码
  CertCode : TThostFtdcCertCodeType;
  ///货币代码
  CurrencyCode : TThostFtdcCurrencyCodeType;
  ///发生金额
  TxAmount : TThostFtdcMoneyType;
  ///有效标志
  Flag : TThostFtdcTransferValidFlagType;
end;
pCThostFtdcTransferQryDetailRspField = ^CThostFtdcTransferQryDetailRspField;

///响应信息
CThostFtdcRspInfoField = record
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcRspInfoField = ^CThostFtdcRspInfoField;

///交易所
CThostFtdcExchangeField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所名称
  ExchangeName : TThostFtdcExchangeNameType;
  ///交易所属性
  ExchangeProperty : TThostFtdcExchangePropertyType;
end;
pCThostFtdcExchangeField = ^CThostFtdcExchangeField;

///产品
CThostFtdcProductField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///产品名称
  ProductName : TThostFtdcProductNameType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品类型
  ProductClass : TThostFtdcProductClassType;
  ///合约数量乘数
  VolumeMultiple : TThostFtdcVolumeMultipleType;
  ///最小变动价位
  PriceTick : TThostFtdcPriceType;
  ///市价单最大下单量
  MaxMarketOrderVolume : TThostFtdcVolumeType;
  ///市价单最小下单量
  MinMarketOrderVolume : TThostFtdcVolumeType;
  ///限价单最大下单量
  MaxLimitOrderVolume : TThostFtdcVolumeType;
  ///限价单最小下单量
  MinLimitOrderVolume : TThostFtdcVolumeType;
  ///持仓类型
  PositionType : TThostFtdcPositionTypeType;
  ///持仓日期类型
  PositionDateType : TThostFtdcPositionDateTypeType;
  ///平仓处理类型
  CloseDealType : TThostFtdcCloseDealTypeType;
  ///交易币种类型
  TradeCurrencyID : TThostFtdcCurrencyIDType;
  ///质押资金可用范围
  MortgageFundUseRange : TThostFtdcMortgageFundUseRangeType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldInstrumentIDType;
  ///合约基础商品乘数
  UnderlyingMultiple : TThostFtdcUnderlyingMultipleType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
  ///交易所产品代码
  ExchangeProductID : TThostFtdcInstrumentIDType;
  ///开仓量限制粒度
  OpenLimitControlLevel : TThostFtdcOpenLimitControlLevelType;
  ///报单频率控制粒度
  OrderFreqControlLevel : TThostFtdcOrderFreqControlLevelType;
end;
pCThostFtdcProductField = ^CThostFtdcProductField;

///合约
CThostFtdcInstrumentField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约名称
  InstrumentName : TThostFtdcInstrumentNameType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldInstrumentIDType;
  ///产品类型
  ProductClass : TThostFtdcProductClassType;
  ///交割年份
  DeliveryYear : TThostFtdcYearType;
  ///交割月
  DeliveryMonth : TThostFtdcMonthType;
  ///市价单最大下单量
  MaxMarketOrderVolume : TThostFtdcVolumeType;
  ///市价单最小下单量
  MinMarketOrderVolume : TThostFtdcVolumeType;
  ///限价单最大下单量
  MaxLimitOrderVolume : TThostFtdcVolumeType;
  ///限价单最小下单量
  MinLimitOrderVolume : TThostFtdcVolumeType;
  ///合约数量乘数
  VolumeMultiple : TThostFtdcVolumeMultipleType;
  ///最小变动价位
  PriceTick : TThostFtdcPriceType;
  ///创建日
  CreateDate : TThostFtdcDateType;
  ///上市日
  OpenDate : TThostFtdcDateType;
  ///到期日
  ExpireDate : TThostFtdcDateType;
  ///开始交割日
  StartDelivDate : TThostFtdcDateType;
  ///结束交割日
  EndDelivDate : TThostFtdcDateType;
  ///合约生命周期状态
  InstLifePhase : TThostFtdcInstLifePhaseType;
  ///当前是否交易
  IsTrading : TThostFtdcBoolType;
  ///持仓类型
  PositionType : TThostFtdcPositionTypeType;
  ///持仓日期类型
  PositionDateType : TThostFtdcPositionDateTypeType;
  ///多头保证金率
  LongMarginRatio : TThostFtdcRatioType;
  ///空头保证金率
  ShortMarginRatio : TThostFtdcRatioType;
  ///是否使用大额单边保证金算法
  MaxMarginSideAlgorithm : TThostFtdcMaxMarginSideAlgorithmType;
  ///保留的无效字段
  reserve4 : TThostFtdcOldInstrumentIDType;
  ///执行价
  StrikePrice : TThostFtdcPriceType;
  ///期权类型
  OptionsType : TThostFtdcOptionsTypeType;
  ///合约基础商品乘数
  UnderlyingMultiple : TThostFtdcUnderlyingMultipleType;
  ///组合类型
  CombinationType : TThostFtdcCombinationTypeType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
  ///基础商品代码
  UnderlyingInstrID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInstrumentField = ^CThostFtdcInstrumentField;

///经纪公司
CThostFtdcBrokerField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///经纪公司简称
  BrokerAbbr : TThostFtdcBrokerAbbrType;
  ///经纪公司名称
  BrokerName : TThostFtdcBrokerNameType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
end;
pCThostFtdcBrokerField = ^CThostFtdcBrokerField;

///交易所交易员
CThostFtdcTraderField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///安装数量
  InstallCount : TThostFtdcInstallCountType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///撤单时选择席位算法
  OrderCancelAlg : TThostFtdcOrderCancelAlgType;
  ///交易报盘安装数量
  TradeInstallCount : TThostFtdcInstallCountType;
  ///行情报盘安装数量
  MDInstallCount : TThostFtdcInstallCountType;
end;
pCThostFtdcTraderField = ^CThostFtdcTraderField;

///投资者
CThostFtdcInvestorField = record
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者分组代码
  InvestorGroupID : TThostFtdcInvestorIDType;
  ///投资者名称
  InvestorName : TThostFtdcPartyNameType;
  ///证件类型
  IdentifiedCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
  ///联系电话
  Telephone : TThostFtdcTelephoneType;
  ///通讯地址
  Address : TThostFtdcAddressType;
  ///开户日期
  OpenDate : TThostFtdcDateType;
  ///手机
  Mobile : TThostFtdcMobileType;
  ///手续费率模板代码
  CommModelID : TThostFtdcInvestorIDType;
  ///保证金率模板代码
  MarginModelID : TThostFtdcInvestorIDType;
  ///是否频率控制
  IsOrderFreq : TThostFtdcEnumBoolType;
  ///是否开仓限制
  IsOpenVolLimit : TThostFtdcEnumBoolType;
end;
pCThostFtdcInvestorField = ^CThostFtdcInvestorField;

///交易编码
CThostFtdcTradingCodeField = record
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
  ///交易编码类型
  ClientIDType : TThostFtdcClientIDTypeType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///业务类型
  BizType : TThostFtdcBizTypeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcTradingCodeField = ^CThostFtdcTradingCodeField;

///会员编码和经纪公司编码对照表
CThostFtdcPartBrokerField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
end;
pCThostFtdcPartBrokerField = ^CThostFtdcPartBrokerField;

///管理用户
CThostFtdcSuperUserField = record
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户名称
  UserName : TThostFtdcUserNameType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
end;
pCThostFtdcSuperUserField = ^CThostFtdcSuperUserField;

///管理用户功能权限
CThostFtdcSuperUserFunctionField = record
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///功能代码
  FunctionCode : TThostFtdcFunctionCodeType;
end;
pCThostFtdcSuperUserFunctionField = ^CThostFtdcSuperUserFunctionField;

///投资者组
CThostFtdcInvestorGroupField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者分组代码
  InvestorGroupID : TThostFtdcInvestorIDType;
  ///投资者分组名称
  InvestorGroupName : TThostFtdcInvestorGroupNameType;
end;
pCThostFtdcInvestorGroupField = ^CThostFtdcInvestorGroupField;

///资金账户
CThostFtdcTradingAccountField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///上次质押金额
  PreMortgage : TThostFtdcMoneyType;
  ///上次信用额度
  PreCredit : TThostFtdcMoneyType;
  ///上次存款额
  PreDeposit : TThostFtdcMoneyType;
  ///上次结算准备金
  PreBalance : TThostFtdcMoneyType;
  ///上次占用的保证金
  PreMargin : TThostFtdcMoneyType;
  ///利息基数
  InterestBase : TThostFtdcMoneyType;
  ///利息收入
  Interest : TThostFtdcMoneyType;
  ///入金金额
  Deposit : TThostFtdcMoneyType;
  ///出金金额
  Withdraw : TThostFtdcMoneyType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///当前保证金总额
  CurrMargin : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///持仓盈亏
  PositionProfit : TThostFtdcMoneyType;
  ///期货结算准备金
  Balance : TThostFtdcMoneyType;
  ///可用资金
  Available : TThostFtdcMoneyType;
  ///可取资金
  WithdrawQuota : TThostFtdcMoneyType;
  ///基本准备金
  Reserve : TThostFtdcMoneyType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///信用额度
  Credit : TThostFtdcMoneyType;
  ///质押金额
  Mortgage : TThostFtdcMoneyType;
  ///交易所保证金
  ExchangeMargin : TThostFtdcMoneyType;
  ///投资者交割保证金
  DeliveryMargin : TThostFtdcMoneyType;
  ///交易所交割保证金
  ExchangeDeliveryMargin : TThostFtdcMoneyType;
  ///保底期货结算准备金
  ReserveBalance : TThostFtdcMoneyType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///上次货币质入金额
  PreFundMortgageIn : TThostFtdcMoneyType;
  ///上次货币质出金额
  PreFundMortgageOut : TThostFtdcMoneyType;
  ///货币质入金额
  FundMortgageIn : TThostFtdcMoneyType;
  ///货币质出金额
  FundMortgageOut : TThostFtdcMoneyType;
  ///货币质押余额
  FundMortgageAvailable : TThostFtdcMoneyType;
  ///可质押货币金额
  MortgageableFund : TThostFtdcMoneyType;
  ///特殊产品占用保证金
  SpecProductMargin : TThostFtdcMoneyType;
  ///特殊产品冻结保证金
  SpecProductFrozenMargin : TThostFtdcMoneyType;
  ///特殊产品手续费
  SpecProductCommission : TThostFtdcMoneyType;
  ///特殊产品冻结手续费
  SpecProductFrozenCommission : TThostFtdcMoneyType;
  ///特殊产品持仓盈亏
  SpecProductPositionProfit : TThostFtdcMoneyType;
  ///特殊产品平仓盈亏
  SpecProductCloseProfit : TThostFtdcMoneyType;
  ///根据持仓盈亏算法计算的特殊产品持仓盈亏
  SpecProductPositionProfitByAlg : TThostFtdcMoneyType;
  ///特殊产品交易所保证金
  SpecProductExchangeMargin : TThostFtdcMoneyType;
  ///业务类型
  BizType : TThostFtdcBizTypeType;
  ///延时换汇冻结金额
  FrozenSwap : TThostFtdcMoneyType;
  ///剩余换汇额度
  RemainSwap : TThostFtdcMoneyType;
end;
pCThostFtdcTradingAccountField = ^CThostFtdcTradingAccountField;

///投资者持仓
CThostFtdcInvestorPositionField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///持仓多空方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///持仓日期
  PositionDate : TThostFtdcPositionDateType;
  ///上日持仓
  YdPosition : TThostFtdcVolumeType;
  ///今日持仓
  Position : TThostFtdcVolumeType;
  ///多头冻结
  LongFrozen : TThostFtdcVolumeType;
  ///空头冻结
  ShortFrozen : TThostFtdcVolumeType;
  ///开仓冻结金额
  LongFrozenAmount : TThostFtdcMoneyType;
  ///开仓冻结金额
  ShortFrozenAmount : TThostFtdcMoneyType;
  ///开仓量
  OpenVolume : TThostFtdcVolumeType;
  ///平仓量
  CloseVolume : TThostFtdcVolumeType;
  ///开仓金额
  OpenAmount : TThostFtdcMoneyType;
  ///平仓金额
  CloseAmount : TThostFtdcMoneyType;
  ///持仓成本
  PositionCost : TThostFtdcMoneyType;
  ///上次占用的保证金
  PreMargin : TThostFtdcMoneyType;
  ///占用的保证金
  UseMargin : TThostFtdcMoneyType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///持仓盈亏
  PositionProfit : TThostFtdcMoneyType;
  ///上次结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///本次结算价
  SettlementPrice : TThostFtdcPriceType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///开仓成本
  OpenCost : TThostFtdcMoneyType;
  ///交易所保证金
  ExchangeMargin : TThostFtdcMoneyType;
  ///组合成交形成的持仓
  CombPosition : TThostFtdcVolumeType;
  ///组合多头冻结
  CombLongFrozen : TThostFtdcVolumeType;
  ///组合空头冻结
  CombShortFrozen : TThostFtdcVolumeType;
  ///逐日盯市平仓盈亏
  CloseProfitByDate : TThostFtdcMoneyType;
  ///逐笔对冲平仓盈亏
  CloseProfitByTrade : TThostFtdcMoneyType;
  ///今日持仓
  TodayPosition : TThostFtdcVolumeType;
  ///保证金率
  MarginRateByMoney : TThostFtdcRatioType;
  ///保证金率(按手数)
  MarginRateByVolume : TThostFtdcRatioType;
  ///执行冻结
  StrikeFrozen : TThostFtdcVolumeType;
  ///执行冻结金额
  StrikeFrozenAmount : TThostFtdcMoneyType;
  ///放弃执行冻结
  AbandonFrozen : TThostFtdcVolumeType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行冻结的昨仓
  YdStrikeFrozen : TThostFtdcVolumeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///持仓成本差值
  PositionCostOffset : TThostFtdcMoneyType;
  ///tas持仓手数
  TasPosition : TThostFtdcVolumeType;
  ///tas持仓成本
  TasPositionCost : TThostFtdcMoneyType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInvestorPositionField = ^CThostFtdcInvestorPositionField;

///合约保证金率
CThostFtdcInstrumentMarginRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///是否相对交易所收取
  IsRelative : TThostFtdcBoolType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInstrumentMarginRateField = ^CThostFtdcInstrumentMarginRateField;

///合约手续费率
CThostFtdcInstrumentCommissionRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///开仓手续费率
  OpenRatioByMoney : TThostFtdcRatioType;
  ///开仓手续费
  OpenRatioByVolume : TThostFtdcRatioType;
  ///平仓手续费率
  CloseRatioByMoney : TThostFtdcRatioType;
  ///平仓手续费
  CloseRatioByVolume : TThostFtdcRatioType;
  ///平今手续费率
  CloseTodayRatioByMoney : TThostFtdcRatioType;
  ///平今手续费
  CloseTodayRatioByVolume : TThostFtdcRatioType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///业务类型
  BizType : TThostFtdcBizTypeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInstrumentCommissionRateField = ^CThostFtdcInstrumentCommissionRateField;

///深度行情
CThostFtdcDepthMarketDataField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///最新价
  LastPrice : TThostFtdcPriceType;
  ///上次结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///昨收盘
  PreClosePrice : TThostFtdcPriceType;
  ///昨持仓量
  PreOpenInterest : TThostFtdcLargeVolumeType;
  ///今开盘
  OpenPrice : TThostFtdcPriceType;
  ///最高价
  HighestPrice : TThostFtdcPriceType;
  ///最低价
  LowestPrice : TThostFtdcPriceType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///成交金额
  Turnover : TThostFtdcMoneyType;
  ///持仓量
  OpenInterest : TThostFtdcLargeVolumeType;
  ///今收盘
  ClosePrice : TThostFtdcPriceType;
  ///本次结算价
  SettlementPrice : TThostFtdcPriceType;
  ///涨停板价
  UpperLimitPrice : TThostFtdcPriceType;
  ///跌停板价
  LowerLimitPrice : TThostFtdcPriceType;
  ///昨虚实度
  PreDelta : TThostFtdcRatioType;
  ///今虚实度
  CurrDelta : TThostFtdcRatioType;
  ///最后修改时间
  UpdateTime : TThostFtdcTimeType;
  ///最后修改毫秒
  UpdateMillisec : TThostFtdcMillisecType;
  ///申买价一
  BidPrice1 : TThostFtdcPriceType;
  ///申买量一
  BidVolume1 : TThostFtdcVolumeType;
  ///申卖价一
  AskPrice1 : TThostFtdcPriceType;
  ///申卖量一
  AskVolume1 : TThostFtdcVolumeType;
  ///申买价二
  BidPrice2 : TThostFtdcPriceType;
  ///申买量二
  BidVolume2 : TThostFtdcVolumeType;
  ///申卖价二
  AskPrice2 : TThostFtdcPriceType;
  ///申卖量二
  AskVolume2 : TThostFtdcVolumeType;
  ///申买价三
  BidPrice3 : TThostFtdcPriceType;
  ///申买量三
  BidVolume3 : TThostFtdcVolumeType;
  ///申卖价三
  AskPrice3 : TThostFtdcPriceType;
  ///申卖量三
  AskVolume3 : TThostFtdcVolumeType;
  ///申买价四
  BidPrice4 : TThostFtdcPriceType;
  ///申买量四
  BidVolume4 : TThostFtdcVolumeType;
  ///申卖价四
  AskPrice4 : TThostFtdcPriceType;
  ///申卖量四
  AskVolume4 : TThostFtdcVolumeType;
  ///申买价五
  BidPrice5 : TThostFtdcPriceType;
  ///申买量五
  BidVolume5 : TThostFtdcVolumeType;
  ///申卖价五
  AskPrice5 : TThostFtdcPriceType;
  ///申卖量五
  AskVolume5 : TThostFtdcVolumeType;
  ///当日均价
  AveragePrice : TThostFtdcPriceType;
  ///业务日期
  ActionDay : TThostFtdcDateType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///上带价
  BandingUpperPrice : TThostFtdcPriceType;
  ///下带价
  BandingLowerPrice : TThostFtdcPriceType;
end;
pCThostFtdcDepthMarketDataField = ^CThostFtdcDepthMarketDataField;

///投资者合约交易权限
CThostFtdcInstrumentTradingRightField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易权限
  TradingRight : TThostFtdcTradingRightType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInstrumentTradingRightField = ^CThostFtdcInstrumentTradingRightField;

///经纪公司用户
CThostFtdcBrokerUserField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户名称
  UserName : TThostFtdcUserNameType;
  ///用户类型
  UserType : TThostFtdcUserTypeType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
  ///是否使用令牌
  IsUsingOTP : TThostFtdcBoolType;
  ///是否强制终端认证
  IsAuthForce : TThostFtdcBoolType;
end;
pCThostFtdcBrokerUserField = ^CThostFtdcBrokerUserField;

///经纪公司用户口令
CThostFtdcBrokerUserPasswordField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///上次修改时间
  LastUpdateTime : TThostFtdcDateTimeType;
  ///上次登陆时间
  LastLoginTime : TThostFtdcDateTimeType;
  ///密码过期时间
  ExpireDate : TThostFtdcDateType;
  ///弱密码过期时间
  WeakExpireDate : TThostFtdcDateType;
end;
pCThostFtdcBrokerUserPasswordField = ^CThostFtdcBrokerUserPasswordField;

///经纪公司用户功能权限
CThostFtdcBrokerUserFunctionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///经纪公司功能代码
  BrokerFunctionCode : TThostFtdcBrokerFunctionCodeType;
end;
pCThostFtdcBrokerUserFunctionField = ^CThostFtdcBrokerUserFunctionField;

///交易所交易员报盘机
CThostFtdcTraderOfferField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///交易所交易员连接状态
  TraderConnectStatus : TThostFtdcTraderConnectStatusType;
  ///发出连接请求的日期
  ConnectRequestDate : TThostFtdcDateType;
  ///发出连接请求的时间
  ConnectRequestTime : TThostFtdcTimeType;
  ///上次报告日期
  LastReportDate : TThostFtdcDateType;
  ///上次报告时间
  LastReportTime : TThostFtdcTimeType;
  ///完成连接日期
  ConnectDate : TThostFtdcDateType;
  ///完成连接时间
  ConnectTime : TThostFtdcTimeType;
  ///启动日期
  StartDate : TThostFtdcDateType;
  ///启动时间
  StartTime : TThostFtdcTimeType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///本席位最大成交编号
  MaxTradeID : TThostFtdcTradeIDType;
  ///本席位最大报单备拷
  MaxOrderMessageReference : TThostFtdcReturnCodeType;
  ///撤单时选择席位算法
  OrderCancelAlg : TThostFtdcOrderCancelAlgType;
end;
pCThostFtdcTraderOfferField = ^CThostFtdcTraderOfferField;

///投资者结算结果
CThostFtdcSettlementInfoField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///消息正文
  Content : TThostFtdcContentType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcSettlementInfoField = ^CThostFtdcSettlementInfoField;

///合约保证金率调整
CThostFtdcInstrumentMarginRateAdjustField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///是否相对交易所收取
  IsRelative : TThostFtdcBoolType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInstrumentMarginRateAdjustField = ^CThostFtdcInstrumentMarginRateAdjustField;

///交易所保证金率
CThostFtdcExchangeMarginRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcExchangeMarginRateField = ^CThostFtdcExchangeMarginRateField;

///交易所保证金率调整
CThostFtdcExchangeMarginRateAdjustField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///跟随交易所投资者多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///跟随交易所投资者多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///跟随交易所投资者空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///跟随交易所投资者空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///交易所多头保证金率
  ExchLongMarginRatioByMoney : TThostFtdcRatioType;
  ///交易所多头保证金费
  ExchLongMarginRatioByVolume : TThostFtdcMoneyType;
  ///交易所空头保证金率
  ExchShortMarginRatioByMoney : TThostFtdcRatioType;
  ///交易所空头保证金费
  ExchShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///不跟随交易所投资者多头保证金率
  NoLongMarginRatioByMoney : TThostFtdcRatioType;
  ///不跟随交易所投资者多头保证金费
  NoLongMarginRatioByVolume : TThostFtdcMoneyType;
  ///不跟随交易所投资者空头保证金率
  NoShortMarginRatioByMoney : TThostFtdcRatioType;
  ///不跟随交易所投资者空头保证金费
  NoShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcExchangeMarginRateAdjustField = ^CThostFtdcExchangeMarginRateAdjustField;

///汇率
CThostFtdcExchangeRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///源币种
  FromCurrencyID : TThostFtdcCurrencyIDType;
  ///源币种单位数量
  FromCurrencyUnit : TThostFtdcCurrencyUnitType;
  ///目标币种
  ToCurrencyID : TThostFtdcCurrencyIDType;
  ///汇率
  ExchangeRate : TThostFtdcExchangeRateType;
end;
pCThostFtdcExchangeRateField = ^CThostFtdcExchangeRateField;

///结算引用
CThostFtdcSettlementRefField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
end;
pCThostFtdcSettlementRefField = ^CThostFtdcSettlementRefField;

///当前时间
CThostFtdcCurrentTimeField = record
  ///当前交易日
  CurrDate : TThostFtdcDateType;
  ///当前时间
  CurrTime : TThostFtdcTimeType;
  ///当前时间（毫秒）
  CurrMillisec : TThostFtdcMillisecType;
  ///自然日期
  ActionDay : TThostFtdcDateType;
end;
pCThostFtdcCurrentTimeField = ^CThostFtdcCurrentTimeField;

///通讯阶段
CThostFtdcCommPhaseField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///通讯时段编号
  CommPhaseNo : TThostFtdcCommPhaseNoType;
  ///系统编号
  SystemID : TThostFtdcSystemIDType;
end;
pCThostFtdcCommPhaseField = ^CThostFtdcCommPhaseField;

///登录信息
CThostFtdcLoginInfoField = record
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///登录日期
  LoginDate : TThostFtdcDateType;
  ///登录时间
  LoginTime : TThostFtdcTimeType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///接口端产品信息
  InterfaceProductInfo : TThostFtdcProductInfoType;
  ///协议信息
  ProtocolInfo : TThostFtdcProtocolInfoType;
  ///系统名称
  SystemName : TThostFtdcSystemNameType;
  ///密码,已弃用
  PasswordDeprecated : TThostFtdcPasswordType;
  ///最大报单引用
  MaxOrderRef : TThostFtdcOrderRefType;
  ///上期所时间
  SHFETime : TThostFtdcTimeType;
  ///大商所时间
  DCETime : TThostFtdcTimeType;
  ///郑商所时间
  CZCETime : TThostFtdcTimeType;
  ///中金所时间
  FFEXTime : TThostFtdcTimeType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///动态密码
  OneTimePassword : TThostFtdcPasswordType;
  ///能源中心时间
  INETime : TThostFtdcTimeType;
  ///查询时是否需要流控
  IsQryControl : TThostFtdcBoolType;
  ///登录备注
  LoginRemark : TThostFtdcLoginRemarkType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcLoginInfoField = ^CThostFtdcLoginInfoField;

///登录信息
CThostFtdcLogoutAllField = record
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///系统名称
  SystemName : TThostFtdcSystemNameType;
end;
pCThostFtdcLogoutAllField = ^CThostFtdcLogoutAllField;

///前置状态
CThostFtdcFrontStatusField = record
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///上次报告日期
  LastReportDate : TThostFtdcDateType;
  ///上次报告时间
  LastReportTime : TThostFtdcTimeType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
end;
pCThostFtdcFrontStatusField = ^CThostFtdcFrontStatusField;

///用户口令变更
CThostFtdcUserPasswordUpdateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///原来的口令
  OldPassword : TThostFtdcPasswordType;
  ///新的口令
  NewPassword : TThostFtdcPasswordType;
end;
pCThostFtdcUserPasswordUpdateField = ^CThostFtdcUserPasswordUpdateField;

///输入报单
CThostFtdcInputOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///报单价格条件
  OrderPriceType : TThostFtdcOrderPriceTypeType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///组合开平标志
  CombOffsetFlag : TThostFtdcCombOffsetFlagType;
  ///组合投机套保标志
  CombHedgeFlag : TThostFtdcCombHedgeFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量
  VolumeTotalOriginal : TThostFtdcVolumeType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
  ///GTD日期
  GTDDate : TThostFtdcDateType;
  ///成交量类型
  VolumeCondition : TThostFtdcVolumeConditionType;
  ///最小成交量
  MinVolume : TThostFtdcVolumeType;
  ///触发条件
  ContingentCondition : TThostFtdcContingentConditionType;
  ///止损价
  StopPrice : TThostFtdcPriceType;
  ///强平原因
  ForceCloseReason : TThostFtdcForceCloseReasonType;
  ///自动挂起标志
  IsAutoSuspend : TThostFtdcBoolType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///用户强评标志
  UserForceClose : TThostFtdcBoolType;
  ///互换单标志
  IsSwapOrder : TThostFtdcBoolType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputOrderField = ^CThostFtdcInputOrderField;

///报单
CThostFtdcOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///报单价格条件
  OrderPriceType : TThostFtdcOrderPriceTypeType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///组合开平标志
  CombOffsetFlag : TThostFtdcCombOffsetFlagType;
  ///组合投机套保标志
  CombHedgeFlag : TThostFtdcCombHedgeFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量
  VolumeTotalOriginal : TThostFtdcVolumeType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
  ///GTD日期
  GTDDate : TThostFtdcDateType;
  ///成交量类型
  VolumeCondition : TThostFtdcVolumeConditionType;
  ///最小成交量
  MinVolume : TThostFtdcVolumeType;
  ///触发条件
  ContingentCondition : TThostFtdcContingentConditionType;
  ///止损价
  StopPrice : TThostFtdcPriceType;
  ///强平原因
  ForceCloseReason : TThostFtdcForceCloseReasonType;
  ///自动挂起标志
  IsAutoSuspend : TThostFtdcBoolType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///报单提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///报单来源
  OrderSource : TThostFtdcOrderSourceType;
  ///报单状态
  OrderStatus : TThostFtdcOrderStatusType;
  ///报单类型
  OrderType : TThostFtdcOrderTypeType;
  ///今成交数量
  VolumeTraded : TThostFtdcVolumeType;
  ///剩余数量
  VolumeTotal : TThostFtdcVolumeType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///委托时间
  InsertTime : TThostFtdcTimeType;
  ///激活时间
  ActiveTime : TThostFtdcTimeType;
  ///挂起时间
  SuspendTime : TThostFtdcTimeType;
  ///最后修改时间
  UpdateTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///最后修改交易所交易员代码
  ActiveTraderID : TThostFtdcTraderIDType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///用户强评标志
  UserForceClose : TThostFtdcBoolType;
  ///操作用户代码
  ActiveUserID : TThostFtdcUserIDType;
  ///经纪公司报单编号
  BrokerOrderSeq : TThostFtdcSequenceNoType;
  ///相关报单
  RelativeOrderSysID : TThostFtdcOrderSysIDType;
  ///郑商所成交数量
  ZCETotalTradedVolume : TThostFtdcVolumeType;
  ///互换单标志
  IsSwapOrder : TThostFtdcBoolType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcOrderField = ^CThostFtdcOrderField;

///交易所报单
CThostFtdcExchangeOrderField = record
  ///报单价格条件
  OrderPriceType : TThostFtdcOrderPriceTypeType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///组合开平标志
  CombOffsetFlag : TThostFtdcCombOffsetFlagType;
  ///组合投机套保标志
  CombHedgeFlag : TThostFtdcCombHedgeFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量
  VolumeTotalOriginal : TThostFtdcVolumeType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
  ///GTD日期
  GTDDate : TThostFtdcDateType;
  ///成交量类型
  VolumeCondition : TThostFtdcVolumeConditionType;
  ///最小成交量
  MinVolume : TThostFtdcVolumeType;
  ///触发条件
  ContingentCondition : TThostFtdcContingentConditionType;
  ///止损价
  StopPrice : TThostFtdcPriceType;
  ///强平原因
  ForceCloseReason : TThostFtdcForceCloseReasonType;
  ///自动挂起标志
  IsAutoSuspend : TThostFtdcBoolType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///报单提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///报单来源
  OrderSource : TThostFtdcOrderSourceType;
  ///报单状态
  OrderStatus : TThostFtdcOrderStatusType;
  ///报单类型
  OrderType : TThostFtdcOrderTypeType;
  ///今成交数量
  VolumeTraded : TThostFtdcVolumeType;
  ///剩余数量
  VolumeTotal : TThostFtdcVolumeType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///委托时间
  InsertTime : TThostFtdcTimeType;
  ///激活时间
  ActiveTime : TThostFtdcTimeType;
  ///挂起时间
  SuspendTime : TThostFtdcTimeType;
  ///最后修改时间
  UpdateTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///最后修改交易所交易员代码
  ActiveTraderID : TThostFtdcTraderIDType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeOrderField = ^CThostFtdcExchangeOrderField;

///交易所报单插入失败
CThostFtdcExchangeOrderInsertErrorField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcExchangeOrderInsertErrorField = ^CThostFtdcExchangeOrderInsertErrorField;

///输入报单操作
CThostFtdcInputOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报单操作引用
  OrderActionRef : TThostFtdcOrderActionRefType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量变化
  VolumeChange : TThostFtdcVolumeType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputOrderActionField = ^CThostFtdcInputOrderActionField;

///报单操作
CThostFtdcOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报单操作引用
  OrderActionRef : TThostFtdcOrderActionRefType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量变化
  VolumeChange : TThostFtdcVolumeType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcOrderActionField = ^CThostFtdcOrderActionField;

///交易所报单操作
CThostFtdcExchangeOrderActionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量变化
  VolumeChange : TThostFtdcVolumeType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeOrderActionField = ^CThostFtdcExchangeOrderActionField;

///交易所报单操作失败
CThostFtdcExchangeOrderActionErrorField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcExchangeOrderActionErrorField = ^CThostFtdcExchangeOrderActionErrorField;

///交易所成交
CThostFtdcExchangeTradeField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///成交编号
  TradeID : TThostFtdcTradeIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///交易角色
  TradingRole : TThostFtdcTradingRoleType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///价格
  Price : TThostFtdcPriceType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///成交时期
  TradeDate : TThostFtdcDateType;
  ///成交时间
  TradeTime : TThostFtdcTimeType;
  ///成交类型
  TradeType : TThostFtdcTradeTypeType;
  ///成交价来源
  PriceSource : TThostFtdcPriceSourceType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///成交来源
  TradeSource : TThostFtdcTradeSourceType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcExchangeTradeField = ^CThostFtdcExchangeTradeField;

///成交
CThostFtdcTradeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///成交编号
  TradeID : TThostFtdcTradeIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///交易角色
  TradingRole : TThostFtdcTradingRoleType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///价格
  Price : TThostFtdcPriceType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///成交时期
  TradeDate : TThostFtdcDateType;
  ///成交时间
  TradeTime : TThostFtdcTimeType;
  ///成交类型
  TradeType : TThostFtdcTradeTypeType;
  ///成交价来源
  PriceSource : TThostFtdcPriceSourceType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///经纪公司报单编号
  BrokerOrderSeq : TThostFtdcSequenceNoType;
  ///成交来源
  TradeSource : TThostFtdcTradeSourceType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcTradeField = ^CThostFtdcTradeField;

///用户会话
CThostFtdcUserSessionField = record
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///登录日期
  LoginDate : TThostFtdcDateType;
  ///登录时间
  LoginTime : TThostFtdcTimeType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///接口端产品信息
  InterfaceProductInfo : TThostFtdcProductInfoType;
  ///协议信息
  ProtocolInfo : TThostFtdcProtocolInfoType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///登录备注
  LoginRemark : TThostFtdcLoginRemarkType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcUserSessionField = ^CThostFtdcUserSessionField;

///查询最大报单数量
CThostFtdcQryMaxOrderVolumeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///最大允许报单数量
  MaxVolume : TThostFtdcVolumeType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryMaxOrderVolumeField = ^CThostFtdcQryMaxOrderVolumeField;

///投资者结算结果确认信息
CThostFtdcSettlementInfoConfirmField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///确认日期
  ConfirmDate : TThostFtdcDateType;
  ///确认时间
  ConfirmTime : TThostFtdcTimeType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcSettlementInfoConfirmField = ^CThostFtdcSettlementInfoConfirmField;

///出入金同步
CThostFtdcSyncDepositField = record
  ///出入金流水号
  DepositSeqNo : TThostFtdcDepositSeqNoType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///入金金额
  Deposit : TThostFtdcMoneyType;
  ///是否强制进行
  IsForce : TThostFtdcBoolType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///是否是个股期权内转
  IsFromSopt : TThostFtdcBoolType;
  ///资金密码
  TradingPassword : TThostFtdcPasswordType;
end;
pCThostFtdcSyncDepositField = ^CThostFtdcSyncDepositField;

///货币质押同步
CThostFtdcSyncFundMortgageField = record
  ///货币质押流水号
  MortgageSeqNo : TThostFtdcDepositSeqNoType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///源币种
  FromCurrencyID : TThostFtdcCurrencyIDType;
  ///质押金额
  MortgageAmount : TThostFtdcMoneyType;
  ///目标币种
  ToCurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcSyncFundMortgageField = ^CThostFtdcSyncFundMortgageField;

///经纪公司同步
CThostFtdcBrokerSyncField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
end;
pCThostFtdcBrokerSyncField = ^CThostFtdcBrokerSyncField;

///正在同步中的投资者
CThostFtdcSyncingInvestorField = record
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者分组代码
  InvestorGroupID : TThostFtdcInvestorIDType;
  ///投资者名称
  InvestorName : TThostFtdcPartyNameType;
  ///证件类型
  IdentifiedCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
  ///联系电话
  Telephone : TThostFtdcTelephoneType;
  ///通讯地址
  Address : TThostFtdcAddressType;
  ///开户日期
  OpenDate : TThostFtdcDateType;
  ///手机
  Mobile : TThostFtdcMobileType;
  ///手续费率模板代码
  CommModelID : TThostFtdcInvestorIDType;
  ///保证金率模板代码
  MarginModelID : TThostFtdcInvestorIDType;
  ///是否频率控制
  IsOrderFreq : TThostFtdcEnumBoolType;
  ///是否开仓限制
  IsOpenVolLimit : TThostFtdcEnumBoolType;
end;
pCThostFtdcSyncingInvestorField = ^CThostFtdcSyncingInvestorField;

///正在同步中的交易代码
CThostFtdcSyncingTradingCodeField = record
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
  ///交易编码类型
  ClientIDType : TThostFtdcClientIDTypeType;
end;
pCThostFtdcSyncingTradingCodeField = ^CThostFtdcSyncingTradingCodeField;

///正在同步中的投资者分组
CThostFtdcSyncingInvestorGroupField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者分组代码
  InvestorGroupID : TThostFtdcInvestorIDType;
  ///投资者分组名称
  InvestorGroupName : TThostFtdcInvestorGroupNameType;
end;
pCThostFtdcSyncingInvestorGroupField = ^CThostFtdcSyncingInvestorGroupField;

///正在同步中的交易账号
CThostFtdcSyncingTradingAccountField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///上次质押金额
  PreMortgage : TThostFtdcMoneyType;
  ///上次信用额度
  PreCredit : TThostFtdcMoneyType;
  ///上次存款额
  PreDeposit : TThostFtdcMoneyType;
  ///上次结算准备金
  PreBalance : TThostFtdcMoneyType;
  ///上次占用的保证金
  PreMargin : TThostFtdcMoneyType;
  ///利息基数
  InterestBase : TThostFtdcMoneyType;
  ///利息收入
  Interest : TThostFtdcMoneyType;
  ///入金金额
  Deposit : TThostFtdcMoneyType;
  ///出金金额
  Withdraw : TThostFtdcMoneyType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///当前保证金总额
  CurrMargin : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///持仓盈亏
  PositionProfit : TThostFtdcMoneyType;
  ///期货结算准备金
  Balance : TThostFtdcMoneyType;
  ///可用资金
  Available : TThostFtdcMoneyType;
  ///可取资金
  WithdrawQuota : TThostFtdcMoneyType;
  ///基本准备金
  Reserve : TThostFtdcMoneyType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///信用额度
  Credit : TThostFtdcMoneyType;
  ///质押金额
  Mortgage : TThostFtdcMoneyType;
  ///交易所保证金
  ExchangeMargin : TThostFtdcMoneyType;
  ///投资者交割保证金
  DeliveryMargin : TThostFtdcMoneyType;
  ///交易所交割保证金
  ExchangeDeliveryMargin : TThostFtdcMoneyType;
  ///保底期货结算准备金
  ReserveBalance : TThostFtdcMoneyType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///上次货币质入金额
  PreFundMortgageIn : TThostFtdcMoneyType;
  ///上次货币质出金额
  PreFundMortgageOut : TThostFtdcMoneyType;
  ///货币质入金额
  FundMortgageIn : TThostFtdcMoneyType;
  ///货币质出金额
  FundMortgageOut : TThostFtdcMoneyType;
  ///货币质押余额
  FundMortgageAvailable : TThostFtdcMoneyType;
  ///可质押货币金额
  MortgageableFund : TThostFtdcMoneyType;
  ///特殊产品占用保证金
  SpecProductMargin : TThostFtdcMoneyType;
  ///特殊产品冻结保证金
  SpecProductFrozenMargin : TThostFtdcMoneyType;
  ///特殊产品手续费
  SpecProductCommission : TThostFtdcMoneyType;
  ///特殊产品冻结手续费
  SpecProductFrozenCommission : TThostFtdcMoneyType;
  ///特殊产品持仓盈亏
  SpecProductPositionProfit : TThostFtdcMoneyType;
  ///特殊产品平仓盈亏
  SpecProductCloseProfit : TThostFtdcMoneyType;
  ///根据持仓盈亏算法计算的特殊产品持仓盈亏
  SpecProductPositionProfitByAlg : TThostFtdcMoneyType;
  ///特殊产品交易所保证金
  SpecProductExchangeMargin : TThostFtdcMoneyType;
  ///延时换汇冻结金额
  FrozenSwap : TThostFtdcMoneyType;
  ///剩余换汇额度
  RemainSwap : TThostFtdcMoneyType;
end;
pCThostFtdcSyncingTradingAccountField = ^CThostFtdcSyncingTradingAccountField;

///正在同步中的投资者持仓
CThostFtdcSyncingInvestorPositionField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///持仓多空方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///持仓日期
  PositionDate : TThostFtdcPositionDateType;
  ///上日持仓
  YdPosition : TThostFtdcVolumeType;
  ///今日持仓
  Position : TThostFtdcVolumeType;
  ///多头冻结
  LongFrozen : TThostFtdcVolumeType;
  ///空头冻结
  ShortFrozen : TThostFtdcVolumeType;
  ///开仓冻结金额
  LongFrozenAmount : TThostFtdcMoneyType;
  ///开仓冻结金额
  ShortFrozenAmount : TThostFtdcMoneyType;
  ///开仓量
  OpenVolume : TThostFtdcVolumeType;
  ///平仓量
  CloseVolume : TThostFtdcVolumeType;
  ///开仓金额
  OpenAmount : TThostFtdcMoneyType;
  ///平仓金额
  CloseAmount : TThostFtdcMoneyType;
  ///持仓成本
  PositionCost : TThostFtdcMoneyType;
  ///上次占用的保证金
  PreMargin : TThostFtdcMoneyType;
  ///占用的保证金
  UseMargin : TThostFtdcMoneyType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///持仓盈亏
  PositionProfit : TThostFtdcMoneyType;
  ///上次结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///本次结算价
  SettlementPrice : TThostFtdcPriceType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///开仓成本
  OpenCost : TThostFtdcMoneyType;
  ///交易所保证金
  ExchangeMargin : TThostFtdcMoneyType;
  ///组合成交形成的持仓
  CombPosition : TThostFtdcVolumeType;
  ///组合多头冻结
  CombLongFrozen : TThostFtdcVolumeType;
  ///组合空头冻结
  CombShortFrozen : TThostFtdcVolumeType;
  ///逐日盯市平仓盈亏
  CloseProfitByDate : TThostFtdcMoneyType;
  ///逐笔对冲平仓盈亏
  CloseProfitByTrade : TThostFtdcMoneyType;
  ///今日持仓
  TodayPosition : TThostFtdcVolumeType;
  ///保证金率
  MarginRateByMoney : TThostFtdcRatioType;
  ///保证金率(按手数)
  MarginRateByVolume : TThostFtdcRatioType;
  ///执行冻结
  StrikeFrozen : TThostFtdcVolumeType;
  ///执行冻结金额
  StrikeFrozenAmount : TThostFtdcMoneyType;
  ///放弃执行冻结
  AbandonFrozen : TThostFtdcVolumeType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行冻结的昨仓
  YdStrikeFrozen : TThostFtdcVolumeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///持仓成本差值
  PositionCostOffset : TThostFtdcMoneyType;
  ///tas持仓手数
  TasPosition : TThostFtdcVolumeType;
  ///tas持仓成本
  TasPositionCost : TThostFtdcMoneyType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcSyncingInvestorPositionField = ^CThostFtdcSyncingInvestorPositionField;

///正在同步中的合约保证金率
CThostFtdcSyncingInstrumentMarginRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///是否相对交易所收取
  IsRelative : TThostFtdcBoolType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcSyncingInstrumentMarginRateField = ^CThostFtdcSyncingInstrumentMarginRateField;

///正在同步中的合约手续费率
CThostFtdcSyncingInstrumentCommissionRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///开仓手续费率
  OpenRatioByMoney : TThostFtdcRatioType;
  ///开仓手续费
  OpenRatioByVolume : TThostFtdcRatioType;
  ///平仓手续费率
  CloseRatioByMoney : TThostFtdcRatioType;
  ///平仓手续费
  CloseRatioByVolume : TThostFtdcRatioType;
  ///平今手续费率
  CloseTodayRatioByMoney : TThostFtdcRatioType;
  ///平今手续费
  CloseTodayRatioByVolume : TThostFtdcRatioType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcSyncingInstrumentCommissionRateField = ^CThostFtdcSyncingInstrumentCommissionRateField;

///正在同步中的合约交易权限
CThostFtdcSyncingInstrumentTradingRightField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易权限
  TradingRight : TThostFtdcTradingRightType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcSyncingInstrumentTradingRightField = ^CThostFtdcSyncingInstrumentTradingRightField;

///查询报单
CThostFtdcQryOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///开始时间
  InsertTimeStart : TThostFtdcTimeType;
  ///结束时间
  InsertTimeEnd : TThostFtdcTimeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryOrderField = ^CThostFtdcQryOrderField;

///查询成交
CThostFtdcQryTradeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///成交编号
  TradeID : TThostFtdcTradeIDType;
  ///开始时间
  TradeTimeStart : TThostFtdcTimeType;
  ///结束时间
  TradeTimeEnd : TThostFtdcTimeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryTradeField = ^CThostFtdcQryTradeField;

///查询投资者持仓
CThostFtdcQryInvestorPositionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInvestorPositionField = ^CThostFtdcQryInvestorPositionField;

///查询资金账户
CThostFtdcQryTradingAccountField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///业务类型
  BizType : TThostFtdcBizTypeType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
end;
pCThostFtdcQryTradingAccountField = ^CThostFtdcQryTradingAccountField;

///查询投资者
CThostFtdcQryInvestorField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryInvestorField = ^CThostFtdcQryInvestorField;

///查询交易编码
CThostFtdcQryTradingCodeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///交易编码类型
  ClientIDType : TThostFtdcClientIDTypeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcQryTradingCodeField = ^CThostFtdcQryTradingCodeField;

///查询投资者组
CThostFtdcQryInvestorGroupField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
end;
pCThostFtdcQryInvestorGroupField = ^CThostFtdcQryInvestorGroupField;

///查询合约保证金率
CThostFtdcQryInstrumentMarginRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInstrumentMarginRateField = ^CThostFtdcQryInstrumentMarginRateField;

///查询手续费率
CThostFtdcQryInstrumentCommissionRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInstrumentCommissionRateField = ^CThostFtdcQryInstrumentCommissionRateField;

///查询合约交易权限
CThostFtdcQryInstrumentTradingRightField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInstrumentTradingRightField = ^CThostFtdcQryInstrumentTradingRightField;

///查询经纪公司
CThostFtdcQryBrokerField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
end;
pCThostFtdcQryBrokerField = ^CThostFtdcQryBrokerField;

///查询交易员
CThostFtdcQryTraderField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
end;
pCThostFtdcQryTraderField = ^CThostFtdcQryTraderField;

///查询管理用户功能权限
CThostFtdcQrySuperUserFunctionField = record
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQrySuperUserFunctionField = ^CThostFtdcQrySuperUserFunctionField;

///查询用户会话
CThostFtdcQryUserSessionField = record
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQryUserSessionField = ^CThostFtdcQryUserSessionField;

///查询经纪公司会员代码
CThostFtdcQryPartBrokerField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
end;
pCThostFtdcQryPartBrokerField = ^CThostFtdcQryPartBrokerField;

///查询前置状态
CThostFtdcQryFrontStatusField = record
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
end;
pCThostFtdcQryFrontStatusField = ^CThostFtdcQryFrontStatusField;

///查询交易所报单
CThostFtdcQryExchangeOrderField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcQryExchangeOrderField = ^CThostFtdcQryExchangeOrderField;

///查询报单操作
CThostFtdcQryOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryOrderActionField = ^CThostFtdcQryOrderActionField;

///查询交易所报单操作
CThostFtdcQryExchangeOrderActionField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
end;
pCThostFtdcQryExchangeOrderActionField = ^CThostFtdcQryExchangeOrderActionField;

///查询管理用户
CThostFtdcQrySuperUserField = record
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQrySuperUserField = ^CThostFtdcQrySuperUserField;

///查询交易所
CThostFtdcQryExchangeField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryExchangeField = ^CThostFtdcQryExchangeField;

///查询产品
CThostFtdcQryProductField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///产品类型
  ProductClass : TThostFtdcProductClassType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryProductField = ^CThostFtdcQryProductField;

///查询合约
CThostFtdcQryInstrumentField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInstrumentField = ^CThostFtdcQryInstrumentField;

///查询行情
CThostFtdcQryDepthMarketDataField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryDepthMarketDataField = ^CThostFtdcQryDepthMarketDataField;

///查询经纪公司用户
CThostFtdcQryBrokerUserField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQryBrokerUserField = ^CThostFtdcQryBrokerUserField;

///查询经纪公司用户权限
CThostFtdcQryBrokerUserFunctionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQryBrokerUserFunctionField = ^CThostFtdcQryBrokerUserFunctionField;

///查询交易员报盘机
CThostFtdcQryTraderOfferField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
end;
pCThostFtdcQryTraderOfferField = ^CThostFtdcQryTraderOfferField;

///查询出入金流水
CThostFtdcQrySyncDepositField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///出入金流水号
  DepositSeqNo : TThostFtdcDepositSeqNoType;
end;
pCThostFtdcQrySyncDepositField = ^CThostFtdcQrySyncDepositField;

///查询投资者结算结果
CThostFtdcQrySettlementInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcQrySettlementInfoField = ^CThostFtdcQrySettlementInfoField;

///查询交易所保证金率
CThostFtdcQryExchangeMarginRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryExchangeMarginRateField = ^CThostFtdcQryExchangeMarginRateField;

///查询交易所调整保证金率
CThostFtdcQryExchangeMarginRateAdjustField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryExchangeMarginRateAdjustField = ^CThostFtdcQryExchangeMarginRateAdjustField;

///查询汇率
CThostFtdcQryExchangeRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///源币种
  FromCurrencyID : TThostFtdcCurrencyIDType;
  ///目标币种
  ToCurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcQryExchangeRateField = ^CThostFtdcQryExchangeRateField;

///查询货币质押流水
CThostFtdcQrySyncFundMortgageField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///货币质押流水号
  MortgageSeqNo : TThostFtdcDepositSeqNoType;
end;
pCThostFtdcQrySyncFundMortgageField = ^CThostFtdcQrySyncFundMortgageField;

///查询报单
CThostFtdcQryHisOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///开始时间
  InsertTimeStart : TThostFtdcTimeType;
  ///结束时间
  InsertTimeEnd : TThostFtdcTimeType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryHisOrderField = ^CThostFtdcQryHisOrderField;

///当前期权合约最小保证金
CThostFtdcOptionInstrMiniMarginField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///单位（手）期权合约最小保证金
  MinMargin : TThostFtdcMoneyType;
  ///取值方式
  ValueMethod : TThostFtdcValueMethodType;
  ///是否跟随交易所收取
  IsRelative : TThostFtdcBoolType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcOptionInstrMiniMarginField = ^CThostFtdcOptionInstrMiniMarginField;

///当前期权合约保证金调整系数
CThostFtdcOptionInstrMarginAdjustField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机空头保证金调整系数
  SShortMarginRatioByMoney : TThostFtdcRatioType;
  ///投机空头保证金调整系数
  SShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///保值空头保证金调整系数
  HShortMarginRatioByMoney : TThostFtdcRatioType;
  ///保值空头保证金调整系数
  HShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///套利空头保证金调整系数
  AShortMarginRatioByMoney : TThostFtdcRatioType;
  ///套利空头保证金调整系数
  AShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///是否跟随交易所收取
  IsRelative : TThostFtdcBoolType;
  ///做市商空头保证金调整系数
  MShortMarginRatioByMoney : TThostFtdcRatioType;
  ///做市商空头保证金调整系数
  MShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcOptionInstrMarginAdjustField = ^CThostFtdcOptionInstrMarginAdjustField;

///当前期权合约手续费的详细内容
CThostFtdcOptionInstrCommRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///开仓手续费率
  OpenRatioByMoney : TThostFtdcRatioType;
  ///开仓手续费
  OpenRatioByVolume : TThostFtdcRatioType;
  ///平仓手续费率
  CloseRatioByMoney : TThostFtdcRatioType;
  ///平仓手续费
  CloseRatioByVolume : TThostFtdcRatioType;
  ///平今手续费率
  CloseTodayRatioByMoney : TThostFtdcRatioType;
  ///平今手续费
  CloseTodayRatioByVolume : TThostFtdcRatioType;
  ///执行手续费率
  StrikeRatioByMoney : TThostFtdcRatioType;
  ///执行手续费
  StrikeRatioByVolume : TThostFtdcRatioType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcOptionInstrCommRateField = ^CThostFtdcOptionInstrCommRateField;

///期权交易成本
CThostFtdcOptionInstrTradeCostField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///期权合约保证金不变部分
  FixedMargin : TThostFtdcMoneyType;
  ///期权合约最小保证金
  MiniMargin : TThostFtdcMoneyType;
  ///期权合约权利金
  Royalty : TThostFtdcMoneyType;
  ///交易所期权合约保证金不变部分
  ExchFixedMargin : TThostFtdcMoneyType;
  ///交易所期权合约最小保证金
  ExchMiniMargin : TThostFtdcMoneyType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcOptionInstrTradeCostField = ^CThostFtdcOptionInstrTradeCostField;

///期权交易成本查询
CThostFtdcQryOptionInstrTradeCostField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///期权合约报价
  InputPrice : TThostFtdcPriceType;
  ///标的价格,填0则用昨结算价
  UnderlyingPrice : TThostFtdcPriceType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryOptionInstrTradeCostField = ^CThostFtdcQryOptionInstrTradeCostField;

///期权手续费率查询
CThostFtdcQryOptionInstrCommRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryOptionInstrCommRateField = ^CThostFtdcQryOptionInstrCommRateField;

///股指现货指数
CThostFtdcIndexPriceField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///指数现货收盘价
  ClosePrice : TThostFtdcPriceType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcIndexPriceField = ^CThostFtdcIndexPriceField;

///输入的执行宣告
CThostFtdcInputExecOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///执行宣告引用
  ExecOrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///执行类型
  ActionType : TThostFtdcActionTypeType;
  ///保留头寸申请的持仓方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///期权行权后是否保留期货头寸的标记,该字段已废弃
  ReservePositionFlag : TThostFtdcExecOrderPositionFlagType;
  ///期权行权后生成的头寸是否自动平仓
  CloseFlag : TThostFtdcExecOrderCloseFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputExecOrderField = ^CThostFtdcInputExecOrderField;

///输入执行宣告操作
CThostFtdcInputExecOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///执行宣告操作引用
  ExecOrderActionRef : TThostFtdcOrderActionRefType;
  ///执行宣告引用
  ExecOrderRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行宣告操作编号
  ExecOrderSysID : TThostFtdcExecOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputExecOrderActionField = ^CThostFtdcInputExecOrderActionField;

///执行宣告
CThostFtdcExecOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///执行宣告引用
  ExecOrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///执行类型
  ActionType : TThostFtdcActionTypeType;
  ///保留头寸申请的持仓方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///期权行权后是否保留期货头寸的标记,该字段已废弃
  ReservePositionFlag : TThostFtdcExecOrderPositionFlagType;
  ///期权行权后生成的头寸是否自动平仓
  CloseFlag : TThostFtdcExecOrderCloseFlagType;
  ///本地执行宣告编号
  ExecOrderLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///执行宣告提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///执行宣告编号
  ExecOrderSysID : TThostFtdcExecOrderSysIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///执行结果
  ExecResult : TThostFtdcExecResultType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///操作用户代码
  ActiveUserID : TThostFtdcUserIDType;
  ///经纪公司报单编号
  BrokerExecOrderSeq : TThostFtdcSequenceNoType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExecOrderField = ^CThostFtdcExecOrderField;

///执行宣告操作
CThostFtdcExecOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///执行宣告操作引用
  ExecOrderActionRef : TThostFtdcOrderActionRefType;
  ///执行宣告引用
  ExecOrderRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行宣告操作编号
  ExecOrderSysID : TThostFtdcExecOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地执行宣告编号
  ExecOrderLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///执行类型
  ActionType : TThostFtdcActionTypeType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExecOrderActionField = ^CThostFtdcExecOrderActionField;

///执行宣告查询
CThostFtdcQryExecOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行宣告编号
  ExecOrderSysID : TThostFtdcExecOrderSysIDType;
  ///开始时间
  InsertTimeStart : TThostFtdcTimeType;
  ///结束时间
  InsertTimeEnd : TThostFtdcTimeType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryExecOrderField = ^CThostFtdcQryExecOrderField;

///交易所执行宣告信息
CThostFtdcExchangeExecOrderField = record
  ///数量
  Volume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///执行类型
  ActionType : TThostFtdcActionTypeType;
  ///保留头寸申请的持仓方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///期权行权后是否保留期货头寸的标记,该字段已废弃
  ReservePositionFlag : TThostFtdcExecOrderPositionFlagType;
  ///期权行权后生成的头寸是否自动平仓
  CloseFlag : TThostFtdcExecOrderCloseFlagType;
  ///本地执行宣告编号
  ExecOrderLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///执行宣告提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///执行宣告编号
  ExecOrderSysID : TThostFtdcExecOrderSysIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///执行结果
  ExecResult : TThostFtdcExecResultType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeExecOrderField = ^CThostFtdcExchangeExecOrderField;

///交易所执行宣告查询
CThostFtdcQryExchangeExecOrderField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcQryExchangeExecOrderField = ^CThostFtdcQryExchangeExecOrderField;

///执行宣告操作查询
CThostFtdcQryExecOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryExecOrderActionField = ^CThostFtdcQryExecOrderActionField;

///交易所执行宣告操作
CThostFtdcExchangeExecOrderActionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行宣告操作编号
  ExecOrderSysID : TThostFtdcExecOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地执行宣告编号
  ExecOrderLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///执行类型
  ActionType : TThostFtdcActionTypeType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcExchangeExecOrderActionField = ^CThostFtdcExchangeExecOrderActionField;

///交易所执行宣告操作查询
CThostFtdcQryExchangeExecOrderActionField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
end;
pCThostFtdcQryExchangeExecOrderActionField = ^CThostFtdcQryExchangeExecOrderActionField;

///错误执行宣告
CThostFtdcErrExecOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///执行宣告引用
  ExecOrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///执行类型
  ActionType : TThostFtdcActionTypeType;
  ///保留头寸申请的持仓方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///期权行权后是否保留期货头寸的标记,该字段已废弃
  ReservePositionFlag : TThostFtdcExecOrderPositionFlagType;
  ///期权行权后生成的头寸是否自动平仓
  CloseFlag : TThostFtdcExecOrderCloseFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcErrExecOrderField = ^CThostFtdcErrExecOrderField;

///查询错误执行宣告
CThostFtdcQryErrExecOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryErrExecOrderField = ^CThostFtdcQryErrExecOrderField;

///错误执行宣告操作
CThostFtdcErrExecOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///执行宣告操作引用
  ExecOrderActionRef : TThostFtdcOrderActionRefType;
  ///执行宣告引用
  ExecOrderRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行宣告操作编号
  ExecOrderSysID : TThostFtdcExecOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcErrExecOrderActionField = ^CThostFtdcErrExecOrderActionField;

///查询错误执行宣告操作
CThostFtdcQryErrExecOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryErrExecOrderActionField = ^CThostFtdcQryErrExecOrderActionField;

///投资者期权合约交易权限
CThostFtdcOptionInstrTradingRightField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///交易权限
  TradingRight : TThostFtdcTradingRightType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcOptionInstrTradingRightField = ^CThostFtdcOptionInstrTradingRightField;

///查询期权合约交易权限
CThostFtdcQryOptionInstrTradingRightField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryOptionInstrTradingRightField = ^CThostFtdcQryOptionInstrTradingRightField;

///输入的询价
CThostFtdcInputForQuoteField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///询价引用
  ForQuoteRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputForQuoteField = ^CThostFtdcInputForQuoteField;

///询价
CThostFtdcForQuoteField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///询价引用
  ForQuoteRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///本地询价编号
  ForQuoteLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///询价状态
  ForQuoteStatus : TThostFtdcForQuoteStatusType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///操作用户代码
  ActiveUserID : TThostFtdcUserIDType;
  ///经纪公司询价编号
  BrokerForQutoSeq : TThostFtdcSequenceNoType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcForQuoteField = ^CThostFtdcForQuoteField;

///询价查询
CThostFtdcQryForQuoteField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///开始时间
  InsertTimeStart : TThostFtdcTimeType;
  ///结束时间
  InsertTimeEnd : TThostFtdcTimeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryForQuoteField = ^CThostFtdcQryForQuoteField;

///交易所询价信息
CThostFtdcExchangeForQuoteField = record
  ///本地询价编号
  ForQuoteLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///询价状态
  ForQuoteStatus : TThostFtdcForQuoteStatusType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeForQuoteField = ^CThostFtdcExchangeForQuoteField;

///交易所询价查询
CThostFtdcQryExchangeForQuoteField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcQryExchangeForQuoteField = ^CThostFtdcQryExchangeForQuoteField;

///输入的报价
CThostFtdcInputQuoteField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报价引用
  QuoteRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///卖价格
  AskPrice : TThostFtdcPriceType;
  ///买价格
  BidPrice : TThostFtdcPriceType;
  ///卖数量
  AskVolume : TThostFtdcVolumeType;
  ///买数量
  BidVolume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///卖开平标志
  AskOffsetFlag : TThostFtdcOffsetFlagType;
  ///买开平标志
  BidOffsetFlag : TThostFtdcOffsetFlagType;
  ///卖投机套保标志
  AskHedgeFlag : TThostFtdcHedgeFlagType;
  ///买投机套保标志
  BidHedgeFlag : TThostFtdcHedgeFlagType;
  ///衍生卖报单引用
  AskOrderRef : TThostFtdcOrderRefType;
  ///衍生买报单引用
  BidOrderRef : TThostFtdcOrderRefType;
  ///应价编号
  ForQuoteSysID : TThostFtdcOrderSysIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
  ///被顶单编号
  ReplaceSysID : TThostFtdcOrderSysIDType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
end;
pCThostFtdcInputQuoteField = ^CThostFtdcInputQuoteField;

///输入报价操作
CThostFtdcInputQuoteActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报价操作引用
  QuoteActionRef : TThostFtdcOrderActionRefType;
  ///报价引用
  QuoteRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报价操作编号
  QuoteSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputQuoteActionField = ^CThostFtdcInputQuoteActionField;

///报价
CThostFtdcQuoteField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报价引用
  QuoteRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///卖价格
  AskPrice : TThostFtdcPriceType;
  ///买价格
  BidPrice : TThostFtdcPriceType;
  ///卖数量
  AskVolume : TThostFtdcVolumeType;
  ///买数量
  BidVolume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///卖开平标志
  AskOffsetFlag : TThostFtdcOffsetFlagType;
  ///买开平标志
  BidOffsetFlag : TThostFtdcOffsetFlagType;
  ///卖投机套保标志
  AskHedgeFlag : TThostFtdcHedgeFlagType;
  ///买投机套保标志
  BidHedgeFlag : TThostFtdcHedgeFlagType;
  ///本地报价编号
  QuoteLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///报价提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///报价提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///报价编号
  QuoteSysID : TThostFtdcOrderSysIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///报价状态
  QuoteStatus : TThostFtdcOrderStatusType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///卖方报单编号
  AskOrderSysID : TThostFtdcOrderSysIDType;
  ///买方报单编号
  BidOrderSysID : TThostFtdcOrderSysIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///操作用户代码
  ActiveUserID : TThostFtdcUserIDType;
  ///经纪公司报价编号
  BrokerQuoteSeq : TThostFtdcSequenceNoType;
  ///衍生卖报单引用
  AskOrderRef : TThostFtdcOrderRefType;
  ///衍生买报单引用
  BidOrderRef : TThostFtdcOrderRefType;
  ///应价编号
  ForQuoteSysID : TThostFtdcOrderSysIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
  ///被顶单编号
  ReplaceSysID : TThostFtdcOrderSysIDType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
end;
pCThostFtdcQuoteField = ^CThostFtdcQuoteField;

///报价操作
CThostFtdcQuoteActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报价操作引用
  QuoteActionRef : TThostFtdcOrderActionRefType;
  ///报价引用
  QuoteRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报价操作编号
  QuoteSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报价编号
  QuoteLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcQuoteActionField = ^CThostFtdcQuoteActionField;

///报价查询
CThostFtdcQryQuoteField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报价编号
  QuoteSysID : TThostFtdcOrderSysIDType;
  ///开始时间
  InsertTimeStart : TThostFtdcTimeType;
  ///结束时间
  InsertTimeEnd : TThostFtdcTimeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryQuoteField = ^CThostFtdcQryQuoteField;

///交易所报价信息
CThostFtdcExchangeQuoteField = record
  ///卖价格
  AskPrice : TThostFtdcPriceType;
  ///买价格
  BidPrice : TThostFtdcPriceType;
  ///卖数量
  AskVolume : TThostFtdcVolumeType;
  ///买数量
  BidVolume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///卖开平标志
  AskOffsetFlag : TThostFtdcOffsetFlagType;
  ///买开平标志
  BidOffsetFlag : TThostFtdcOffsetFlagType;
  ///卖投机套保标志
  AskHedgeFlag : TThostFtdcHedgeFlagType;
  ///买投机套保标志
  BidHedgeFlag : TThostFtdcHedgeFlagType;
  ///本地报价编号
  QuoteLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///报价提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///报价提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///报价编号
  QuoteSysID : TThostFtdcOrderSysIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///报价状态
  QuoteStatus : TThostFtdcOrderStatusType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///卖方报单编号
  AskOrderSysID : TThostFtdcOrderSysIDType;
  ///买方报单编号
  BidOrderSysID : TThostFtdcOrderSysIDType;
  ///应价编号
  ForQuoteSysID : TThostFtdcOrderSysIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
end;
pCThostFtdcExchangeQuoteField = ^CThostFtdcExchangeQuoteField;

///交易所报价查询
CThostFtdcQryExchangeQuoteField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcQryExchangeQuoteField = ^CThostFtdcQryExchangeQuoteField;

///报价操作查询
CThostFtdcQryQuoteActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryQuoteActionField = ^CThostFtdcQryQuoteActionField;

///交易所报价操作
CThostFtdcExchangeQuoteActionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报价操作编号
  QuoteSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报价编号
  QuoteLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeQuoteActionField = ^CThostFtdcExchangeQuoteActionField;

///交易所报价操作查询
CThostFtdcQryExchangeQuoteActionField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
end;
pCThostFtdcQryExchangeQuoteActionField = ^CThostFtdcQryExchangeQuoteActionField;

///期权合约delta值
CThostFtdcOptionInstrDeltaField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///Delta值
  Delta : TThostFtdcRatioType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcOptionInstrDeltaField = ^CThostFtdcOptionInstrDeltaField;

///发给做市商的询价请求
CThostFtdcForQuoteRspField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///询价编号
  ForQuoteSysID : TThostFtdcOrderSysIDType;
  ///询价时间
  ForQuoteTime : TThostFtdcTimeType;
  ///业务日期
  ActionDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcForQuoteRspField = ^CThostFtdcForQuoteRspField;

///当前期权合约执行偏移值的详细内容
CThostFtdcStrikeOffsetField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///执行偏移值
  Offset : TThostFtdcMoneyType;
  ///执行偏移类型
  OffsetType : TThostFtdcStrikeOffsetTypeType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcStrikeOffsetField = ^CThostFtdcStrikeOffsetField;

///期权执行偏移值查询
CThostFtdcQryStrikeOffsetField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryStrikeOffsetField = ^CThostFtdcQryStrikeOffsetField;

///输入批量报单操作
CThostFtdcInputBatchOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报单操作引用
  OrderActionRef : TThostFtdcOrderActionRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputBatchOrderActionField = ^CThostFtdcInputBatchOrderActionField;

///批量报单操作
CThostFtdcBatchOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报单操作引用
  OrderActionRef : TThostFtdcOrderActionRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcBatchOrderActionField = ^CThostFtdcBatchOrderActionField;

///交易所批量报单操作
CThostFtdcExchangeBatchOrderActionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeBatchOrderActionField = ^CThostFtdcExchangeBatchOrderActionField;

///查询批量报单操作
CThostFtdcQryBatchOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryBatchOrderActionField = ^CThostFtdcQryBatchOrderActionField;

///组合合约安全系数
CThostFtdcCombInstrumentGuardField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///
  GuarantRatio : TThostFtdcRatioType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcCombInstrumentGuardField = ^CThostFtdcCombInstrumentGuardField;

///组合合约安全系数查询
CThostFtdcQryCombInstrumentGuardField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryCombInstrumentGuardField = ^CThostFtdcQryCombInstrumentGuardField;

///输入的申请组合
CThostFtdcInputCombActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///组合引用
  CombActionRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///组合指令方向
  CombDirection : TThostFtdcCombDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputCombActionField = ^CThostFtdcInputCombActionField;

///申请组合
CThostFtdcCombActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///组合引用
  CombActionRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///组合指令方向
  CombDirection : TThostFtdcCombDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///本地申请组合编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///组合状态
  ActionStatus : TThostFtdcOrderActionStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///组合编号
  ComTradeID : TThostFtdcTradeIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcCombActionField = ^CThostFtdcCombActionField;

///申请组合查询
CThostFtdcQryCombActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryCombActionField = ^CThostFtdcQryCombActionField;

///交易所申请组合信息
CThostFtdcExchangeCombActionField = record
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///组合指令方向
  CombDirection : TThostFtdcCombDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///本地申请组合编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///组合状态
  ActionStatus : TThostFtdcOrderActionStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///组合编号
  ComTradeID : TThostFtdcTradeIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeCombActionField = ^CThostFtdcExchangeCombActionField;

///交易所申请组合查询
CThostFtdcQryExchangeCombActionField = record
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcQryExchangeCombActionField = ^CThostFtdcQryExchangeCombActionField;

///产品报价汇率
CThostFtdcProductExchRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报价币种类型
  QuoteCurrencyID : TThostFtdcCurrencyIDType;
  ///汇率
  ExchangeRate : TThostFtdcExchangeRateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcProductExchRateField = ^CThostFtdcProductExchRateField;

///产品报价汇率查询
CThostFtdcQryProductExchRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryProductExchRateField = ^CThostFtdcQryProductExchRateField;

///查询询价价差参数
CThostFtdcQryForQuoteParamField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryForQuoteParamField = ^CThostFtdcQryForQuoteParamField;

///询价价差参数
CThostFtdcForQuoteParamField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///最新价
  LastPrice : TThostFtdcPriceType;
  ///价差
  PriceInterval : TThostFtdcPriceType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcForQuoteParamField = ^CThostFtdcForQuoteParamField;

///当前做市商期权合约手续费的详细内容
CThostFtdcMMOptionInstrCommRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///开仓手续费率
  OpenRatioByMoney : TThostFtdcRatioType;
  ///开仓手续费
  OpenRatioByVolume : TThostFtdcRatioType;
  ///平仓手续费率
  CloseRatioByMoney : TThostFtdcRatioType;
  ///平仓手续费
  CloseRatioByVolume : TThostFtdcRatioType;
  ///平今手续费率
  CloseTodayRatioByMoney : TThostFtdcRatioType;
  ///平今手续费
  CloseTodayRatioByVolume : TThostFtdcRatioType;
  ///执行手续费率
  StrikeRatioByMoney : TThostFtdcRatioType;
  ///执行手续费
  StrikeRatioByVolume : TThostFtdcRatioType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcMMOptionInstrCommRateField = ^CThostFtdcMMOptionInstrCommRateField;

///做市商期权手续费率查询
CThostFtdcQryMMOptionInstrCommRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryMMOptionInstrCommRateField = ^CThostFtdcQryMMOptionInstrCommRateField;

///做市商合约手续费率
CThostFtdcMMInstrumentCommissionRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///开仓手续费率
  OpenRatioByMoney : TThostFtdcRatioType;
  ///开仓手续费
  OpenRatioByVolume : TThostFtdcRatioType;
  ///平仓手续费率
  CloseRatioByMoney : TThostFtdcRatioType;
  ///平仓手续费
  CloseRatioByVolume : TThostFtdcRatioType;
  ///平今手续费率
  CloseTodayRatioByMoney : TThostFtdcRatioType;
  ///平今手续费
  CloseTodayRatioByVolume : TThostFtdcRatioType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcMMInstrumentCommissionRateField = ^CThostFtdcMMInstrumentCommissionRateField;

///查询做市商合约手续费率
CThostFtdcQryMMInstrumentCommissionRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryMMInstrumentCommissionRateField = ^CThostFtdcQryMMInstrumentCommissionRateField;

///当前报单手续费的详细内容
CThostFtdcInstrumentOrderCommRateField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///报单手续费
  OrderCommByVolume : TThostFtdcRatioType;
  ///撤单手续费
  OrderActionCommByVolume : TThostFtdcRatioType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///报单手续费
  OrderCommByTrade : TThostFtdcRatioType;
  ///撤单手续费
  OrderActionCommByTrade : TThostFtdcRatioType;
end;
pCThostFtdcInstrumentOrderCommRateField = ^CThostFtdcInstrumentOrderCommRateField;

///报单手续费率查询
CThostFtdcQryInstrumentOrderCommRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInstrumentOrderCommRateField = ^CThostFtdcQryInstrumentOrderCommRateField;

///交易参数
CThostFtdcTradeParamField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///参数代码
  TradeParamID : TThostFtdcTradeParamIDType;
  ///参数代码值
  TradeParamValue : TThostFtdcSettlementParamValueType;
  ///备注
  Memo : TThostFtdcMemoType;
end;
pCThostFtdcTradeParamField = ^CThostFtdcTradeParamField;

///合约保证金率调整
CThostFtdcInstrumentMarginRateULField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInstrumentMarginRateULField = ^CThostFtdcInstrumentMarginRateULField;

///期货持仓限制参数
CThostFtdcFutureLimitPosiParamField = record
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///当日投机开仓数量限制
  SpecOpenVolume : TThostFtdcVolumeType;
  ///当日套利开仓数量限制
  ArbiOpenVolume : TThostFtdcVolumeType;
  ///当日投机+套利开仓数量限制
  OpenVolume : TThostFtdcVolumeType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcFutureLimitPosiParamField = ^CThostFtdcFutureLimitPosiParamField;

///禁止登录IP
CThostFtdcLoginForbiddenIPField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcLoginForbiddenIPField = ^CThostFtdcLoginForbiddenIPField;

///IP列表
CThostFtdcIPListField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///是否白名单
  IsWhite : TThostFtdcBoolType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcIPListField = ^CThostFtdcIPListField;

///输入的期权自对冲
CThostFtdcInputOptionSelfCloseField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///期权自对冲引用
  OptionSelfCloseRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///期权行权的头寸是否自对冲
  OptSelfCloseFlag : TThostFtdcOptSelfCloseFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputOptionSelfCloseField = ^CThostFtdcInputOptionSelfCloseField;

///输入期权自对冲操作
CThostFtdcInputOptionSelfCloseActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///期权自对冲操作引用
  OptionSelfCloseActionRef : TThostFtdcOrderActionRefType;
  ///期权自对冲引用
  OptionSelfCloseRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///期权自对冲操作编号
  OptionSelfCloseSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcInputOptionSelfCloseActionField = ^CThostFtdcInputOptionSelfCloseActionField;

///期权自对冲
CThostFtdcOptionSelfCloseField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///期权自对冲引用
  OptionSelfCloseRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///期权行权的头寸是否自对冲
  OptSelfCloseFlag : TThostFtdcOptSelfCloseFlagType;
  ///本地期权自对冲编号
  OptionSelfCloseLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///期权自对冲提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///期权自对冲编号
  OptionSelfCloseSysID : TThostFtdcOrderSysIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///自对冲结果
  ExecResult : TThostFtdcExecResultType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///操作用户代码
  ActiveUserID : TThostFtdcUserIDType;
  ///经纪公司报单编号
  BrokerOptionSelfCloseSeq : TThostFtdcSequenceNoType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcOptionSelfCloseField = ^CThostFtdcOptionSelfCloseField;

///期权自对冲操作
CThostFtdcOptionSelfCloseActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///期权自对冲操作引用
  OptionSelfCloseActionRef : TThostFtdcOrderActionRefType;
  ///期权自对冲引用
  OptionSelfCloseRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///期权自对冲操作编号
  OptionSelfCloseSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地期权自对冲编号
  OptionSelfCloseLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcOptionSelfCloseActionField = ^CThostFtdcOptionSelfCloseActionField;

///期权自对冲查询
CThostFtdcQryOptionSelfCloseField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///期权自对冲编号
  OptionSelfCloseSysID : TThostFtdcOrderSysIDType;
  ///开始时间
  InsertTimeStart : TThostFtdcTimeType;
  ///结束时间
  InsertTimeEnd : TThostFtdcTimeType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryOptionSelfCloseField = ^CThostFtdcQryOptionSelfCloseField;

///交易所期权自对冲信息
CThostFtdcExchangeOptionSelfCloseField = record
  ///数量
  Volume : TThostFtdcVolumeType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///期权行权的头寸是否自对冲
  OptSelfCloseFlag : TThostFtdcOptSelfCloseFlagType;
  ///本地期权自对冲编号
  OptionSelfCloseLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///期权自对冲提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///期权自对冲编号
  OptionSelfCloseSysID : TThostFtdcOrderSysIDType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///插入时间
  InsertTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///自对冲结果
  ExecResult : TThostFtdcExecResultType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcExchangeOptionSelfCloseField = ^CThostFtdcExchangeOptionSelfCloseField;

///期权自对冲操作查询
CThostFtdcQryOptionSelfCloseActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryOptionSelfCloseActionField = ^CThostFtdcQryOptionSelfCloseActionField;

///交易所期权自对冲操作
CThostFtdcExchangeOptionSelfCloseActionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///期权自对冲操作编号
  OptionSelfCloseSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地期权自对冲编号
  OptionSelfCloseLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///期权行权的头寸是否自对冲
  OptSelfCloseFlag : TThostFtdcOptSelfCloseFlagType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcExchangeOptionSelfCloseActionField = ^CThostFtdcExchangeOptionSelfCloseActionField;

///延时换汇同步
CThostFtdcSyncDelaySwapField = record
  ///换汇流水号
  DelaySwapSeqNo : TThostFtdcDepositSeqNoType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///源币种
  FromCurrencyID : TThostFtdcCurrencyIDType;
  ///源金额
  FromAmount : TThostFtdcMoneyType;
  ///源换汇冻结金额(可用冻结)
  FromFrozenSwap : TThostFtdcMoneyType;
  ///源剩余换汇额度(可提冻结)
  FromRemainSwap : TThostFtdcMoneyType;
  ///目标币种
  ToCurrencyID : TThostFtdcCurrencyIDType;
  ///目标金额
  ToAmount : TThostFtdcMoneyType;
  ///是否手工换汇
  IsManualSwap : TThostFtdcBoolType;
  ///是否将所有外币的剩余换汇额度设置为0
  IsAllRemainSetZero : TThostFtdcBoolType;
end;
pCThostFtdcSyncDelaySwapField = ^CThostFtdcSyncDelaySwapField;

///查询延时换汇同步
CThostFtdcQrySyncDelaySwapField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///延时换汇流水号
  DelaySwapSeqNo : TThostFtdcDepositSeqNoType;
end;
pCThostFtdcQrySyncDelaySwapField = ^CThostFtdcQrySyncDelaySwapField;

///投资单元
CThostFtdcInvestUnitField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///投资者单元名称
  InvestorUnitName : TThostFtdcPartyNameType;
  ///投资者分组代码
  InvestorGroupID : TThostFtdcInvestorIDType;
  ///手续费率模板代码
  CommModelID : TThostFtdcInvestorIDType;
  ///保证金率模板代码
  MarginModelID : TThostFtdcInvestorIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcInvestUnitField = ^CThostFtdcInvestUnitField;

///查询投资单元
CThostFtdcQryInvestUnitField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcQryInvestUnitField = ^CThostFtdcQryInvestUnitField;

///二级代理商资金校验模式
CThostFtdcSecAgentCheckModeField = record
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///币种
  CurrencyID : TThostFtdcCurrencyIDType;
  ///境外中介机构资金帐号
  BrokerSecAgentID : TThostFtdcAccountIDType;
  ///是否需要校验自己的资金账户
  CheckSelfAccount : TThostFtdcBoolType;
end;
pCThostFtdcSecAgentCheckModeField = ^CThostFtdcSecAgentCheckModeField;

///二级代理商信息
CThostFtdcSecAgentTradeInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///境外中介机构资金帐号
  BrokerSecAgentID : TThostFtdcAccountIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///二级代理商姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcSecAgentTradeInfoField = ^CThostFtdcSecAgentTradeInfoField;

///市场行情
CThostFtdcMarketDataField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///最新价
  LastPrice : TThostFtdcPriceType;
  ///上次结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///昨收盘
  PreClosePrice : TThostFtdcPriceType;
  ///昨持仓量
  PreOpenInterest : TThostFtdcLargeVolumeType;
  ///今开盘
  OpenPrice : TThostFtdcPriceType;
  ///最高价
  HighestPrice : TThostFtdcPriceType;
  ///最低价
  LowestPrice : TThostFtdcPriceType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///成交金额
  Turnover : TThostFtdcMoneyType;
  ///持仓量
  OpenInterest : TThostFtdcLargeVolumeType;
  ///今收盘
  ClosePrice : TThostFtdcPriceType;
  ///本次结算价
  SettlementPrice : TThostFtdcPriceType;
  ///涨停板价
  UpperLimitPrice : TThostFtdcPriceType;
  ///跌停板价
  LowerLimitPrice : TThostFtdcPriceType;
  ///昨虚实度
  PreDelta : TThostFtdcRatioType;
  ///今虚实度
  CurrDelta : TThostFtdcRatioType;
  ///最后修改时间
  UpdateTime : TThostFtdcTimeType;
  ///最后修改毫秒
  UpdateMillisec : TThostFtdcMillisecType;
  ///业务日期
  ActionDay : TThostFtdcDateType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcMarketDataField = ^CThostFtdcMarketDataField;

///行情基础属性
CThostFtdcMarketDataBaseField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///上次结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///昨收盘
  PreClosePrice : TThostFtdcPriceType;
  ///昨持仓量
  PreOpenInterest : TThostFtdcLargeVolumeType;
  ///昨虚实度
  PreDelta : TThostFtdcRatioType;
end;
pCThostFtdcMarketDataBaseField = ^CThostFtdcMarketDataBaseField;

///行情静态属性
CThostFtdcMarketDataStaticField = record
  ///今开盘
  OpenPrice : TThostFtdcPriceType;
  ///最高价
  HighestPrice : TThostFtdcPriceType;
  ///最低价
  LowestPrice : TThostFtdcPriceType;
  ///今收盘
  ClosePrice : TThostFtdcPriceType;
  ///涨停板价
  UpperLimitPrice : TThostFtdcPriceType;
  ///跌停板价
  LowerLimitPrice : TThostFtdcPriceType;
  ///本次结算价
  SettlementPrice : TThostFtdcPriceType;
  ///今虚实度
  CurrDelta : TThostFtdcRatioType;
end;
pCThostFtdcMarketDataStaticField = ^CThostFtdcMarketDataStaticField;

///行情最新成交属性
CThostFtdcMarketDataLastMatchField = record
  ///最新价
  LastPrice : TThostFtdcPriceType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///成交金额
  Turnover : TThostFtdcMoneyType;
  ///持仓量
  OpenInterest : TThostFtdcLargeVolumeType;
end;
pCThostFtdcMarketDataLastMatchField = ^CThostFtdcMarketDataLastMatchField;

///行情最优价属性
CThostFtdcMarketDataBestPriceField = record
  ///申买价一
  BidPrice1 : TThostFtdcPriceType;
  ///申买量一
  BidVolume1 : TThostFtdcVolumeType;
  ///申卖价一
  AskPrice1 : TThostFtdcPriceType;
  ///申卖量一
  AskVolume1 : TThostFtdcVolumeType;
end;
pCThostFtdcMarketDataBestPriceField = ^CThostFtdcMarketDataBestPriceField;

///行情申买二、三属性
CThostFtdcMarketDataBid23Field = record
  ///申买价二
  BidPrice2 : TThostFtdcPriceType;
  ///申买量二
  BidVolume2 : TThostFtdcVolumeType;
  ///申买价三
  BidPrice3 : TThostFtdcPriceType;
  ///申买量三
  BidVolume3 : TThostFtdcVolumeType;
end;
pCThostFtdcMarketDataBid23Field = ^CThostFtdcMarketDataBid23Field;

///行情申卖二、三属性
CThostFtdcMarketDataAsk23Field = record
  ///申卖价二
  AskPrice2 : TThostFtdcPriceType;
  ///申卖量二
  AskVolume2 : TThostFtdcVolumeType;
  ///申卖价三
  AskPrice3 : TThostFtdcPriceType;
  ///申卖量三
  AskVolume3 : TThostFtdcVolumeType;
end;
pCThostFtdcMarketDataAsk23Field = ^CThostFtdcMarketDataAsk23Field;

///行情申买四、五属性
CThostFtdcMarketDataBid45Field = record
  ///申买价四
  BidPrice4 : TThostFtdcPriceType;
  ///申买量四
  BidVolume4 : TThostFtdcVolumeType;
  ///申买价五
  BidPrice5 : TThostFtdcPriceType;
  ///申买量五
  BidVolume5 : TThostFtdcVolumeType;
end;
pCThostFtdcMarketDataBid45Field = ^CThostFtdcMarketDataBid45Field;

///行情申卖四、五属性
CThostFtdcMarketDataAsk45Field = record
  ///申卖价四
  AskPrice4 : TThostFtdcPriceType;
  ///申卖量四
  AskVolume4 : TThostFtdcVolumeType;
  ///申卖价五
  AskPrice5 : TThostFtdcPriceType;
  ///申卖量五
  AskVolume5 : TThostFtdcVolumeType;
end;
pCThostFtdcMarketDataAsk45Field = ^CThostFtdcMarketDataAsk45Field;

///行情更新时间属性
CThostFtdcMarketDataUpdateTimeField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///最后修改时间
  UpdateTime : TThostFtdcTimeType;
  ///最后修改毫秒
  UpdateMillisec : TThostFtdcMillisecType;
  ///业务日期
  ActionDay : TThostFtdcDateType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcMarketDataUpdateTimeField = ^CThostFtdcMarketDataUpdateTimeField;

///行情上下带价
CThostFtdcMarketDataBandingPriceField = record
  ///上带价
  BandingUpperPrice : TThostFtdcPriceType;
  ///下带价
  BandingLowerPrice : TThostFtdcPriceType;
end;
pCThostFtdcMarketDataBandingPriceField = ^CThostFtdcMarketDataBandingPriceField;

///行情交易所代码属性
CThostFtdcMarketDataExchangeField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcMarketDataExchangeField = ^CThostFtdcMarketDataExchangeField;

///指定的合约
CThostFtdcSpecificInstrumentField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcSpecificInstrumentField = ^CThostFtdcSpecificInstrumentField;

///合约状态
CThostFtdcInstrumentStatusField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///结算组代码
  SettlementGroupID : TThostFtdcSettlementGroupIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldInstrumentIDType;
  ///合约交易状态
  InstrumentStatus : TThostFtdcInstrumentStatusType;
  ///交易阶段编号
  TradingSegmentSN : TThostFtdcTradingSegmentSNType;
  ///进入本状态时间
  EnterTime : TThostFtdcTimeType;
  ///进入本状态原因
  EnterReason : TThostFtdcInstStatusEnterReasonType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInstrumentStatusField = ^CThostFtdcInstrumentStatusField;

///查询合约状态
CThostFtdcQryInstrumentStatusField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldExchangeInstIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
end;
pCThostFtdcQryInstrumentStatusField = ^CThostFtdcQryInstrumentStatusField;

///投资者账户
CThostFtdcInvestorAccountField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcInvestorAccountField = ^CThostFtdcInvestorAccountField;

///浮动盈亏算法
CThostFtdcPositionProfitAlgorithmField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///盈亏算法
  Algorithm : TThostFtdcAlgorithmType;
  ///备注
  Memo : TThostFtdcMemoType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcPositionProfitAlgorithmField = ^CThostFtdcPositionProfitAlgorithmField;

///会员资金折扣
CThostFtdcDiscountField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///资金折扣比例
  Discount : TThostFtdcRatioType;
end;
pCThostFtdcDiscountField = ^CThostFtdcDiscountField;

///查询转帐银行
CThostFtdcQryTransferBankField = record
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分中心代码
  BankBrchID : TThostFtdcBankBrchIDType;
end;
pCThostFtdcQryTransferBankField = ^CThostFtdcQryTransferBankField;

///转帐银行
CThostFtdcTransferBankField = record
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分中心代码
  BankBrchID : TThostFtdcBankBrchIDType;
  ///银行名称
  BankName : TThostFtdcBankNameType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
end;
pCThostFtdcTransferBankField = ^CThostFtdcTransferBankField;

///查询投资者持仓明细
CThostFtdcQryInvestorPositionDetailField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInvestorPositionDetailField = ^CThostFtdcQryInvestorPositionDetailField;

///投资者持仓明细
CThostFtdcInvestorPositionDetailField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///买卖
  Direction : TThostFtdcDirectionType;
  ///开仓日期
  OpenDate : TThostFtdcDateType;
  ///成交编号
  TradeID : TThostFtdcTradeIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///开仓价
  OpenPrice : TThostFtdcPriceType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///成交类型
  TradeType : TThostFtdcTradeTypeType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///逐日盯市平仓盈亏
  CloseProfitByDate : TThostFtdcMoneyType;
  ///逐笔对冲平仓盈亏
  CloseProfitByTrade : TThostFtdcMoneyType;
  ///逐日盯市持仓盈亏
  PositionProfitByDate : TThostFtdcMoneyType;
  ///逐笔对冲持仓盈亏
  PositionProfitByTrade : TThostFtdcMoneyType;
  ///投资者保证金
  Margin : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///保证金率
  MarginRateByMoney : TThostFtdcRatioType;
  ///保证金率(按手数)
  MarginRateByVolume : TThostFtdcRatioType;
  ///昨结算价
  LastSettlementPrice : TThostFtdcPriceType;
  ///结算价
  SettlementPrice : TThostFtdcPriceType;
  ///平仓量
  CloseVolume : TThostFtdcVolumeType;
  ///平仓金额
  CloseAmount : TThostFtdcMoneyType;
  ///先开先平剩余数量
  TimeFirstVolume : TThostFtdcVolumeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///特殊持仓标志
  SpecPosiType : TThostFtdcSpecPosiTypeType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///组合合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInvestorPositionDetailField = ^CThostFtdcInvestorPositionDetailField;

///资金账户口令域
CThostFtdcTradingAccountPasswordField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcTradingAccountPasswordField = ^CThostFtdcTradingAccountPasswordField;

///交易所行情报盘机
CThostFtdcMDTraderOfferField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///交易所交易员连接状态
  TraderConnectStatus : TThostFtdcTraderConnectStatusType;
  ///发出连接请求的日期
  ConnectRequestDate : TThostFtdcDateType;
  ///发出连接请求的时间
  ConnectRequestTime : TThostFtdcTimeType;
  ///上次报告日期
  LastReportDate : TThostFtdcDateType;
  ///上次报告时间
  LastReportTime : TThostFtdcTimeType;
  ///完成连接日期
  ConnectDate : TThostFtdcDateType;
  ///完成连接时间
  ConnectTime : TThostFtdcTimeType;
  ///启动日期
  StartDate : TThostFtdcDateType;
  ///启动时间
  StartTime : TThostFtdcTimeType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///本席位最大成交编号
  MaxTradeID : TThostFtdcTradeIDType;
  ///本席位最大报单备拷
  MaxOrderMessageReference : TThostFtdcReturnCodeType;
  ///撤单时选择席位算法
  OrderCancelAlg : TThostFtdcOrderCancelAlgType;
end;
pCThostFtdcMDTraderOfferField = ^CThostFtdcMDTraderOfferField;

///查询行情报盘机
CThostFtdcQryMDTraderOfferField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
end;
pCThostFtdcQryMDTraderOfferField = ^CThostFtdcQryMDTraderOfferField;

///查询客户通知
CThostFtdcQryNoticeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
end;
pCThostFtdcQryNoticeField = ^CThostFtdcQryNoticeField;

///客户通知
CThostFtdcNoticeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///消息正文
  Content : TThostFtdcContentType;
  ///经纪公司通知内容序列号
  SequenceLabel : TThostFtdcSequenceLabelType;
end;
pCThostFtdcNoticeField = ^CThostFtdcNoticeField;

///用户权限
CThostFtdcUserRightField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///客户权限类型
  UserRightType : TThostFtdcUserRightTypeType;
  ///是否禁止
  IsForbidden : TThostFtdcBoolType;
end;
pCThostFtdcUserRightField = ^CThostFtdcUserRightField;

///查询结算信息确认域
CThostFtdcQrySettlementInfoConfirmField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcQrySettlementInfoConfirmField = ^CThostFtdcQrySettlementInfoConfirmField;

///装载结算信息
CThostFtdcLoadSettlementInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
end;
pCThostFtdcLoadSettlementInfoField = ^CThostFtdcLoadSettlementInfoField;

///经纪公司可提资金算法表
CThostFtdcBrokerWithdrawAlgorithmField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///可提资金算法
  WithdrawAlgorithm : TThostFtdcAlgorithmType;
  ///资金使用率
  UsingRatio : TThostFtdcRatioType;
  ///可提是否包含平仓盈利
  IncludeCloseProfit : TThostFtdcIncludeCloseProfitType;
  ///本日无仓且无成交客户是否受可提比例限制
  AllWithoutTrade : TThostFtdcAllWithoutTradeType;
  ///可用是否包含平仓盈利
  AvailIncludeCloseProfit : TThostFtdcIncludeCloseProfitType;
  ///是否启用用户事件
  IsBrokerUserEvent : TThostFtdcBoolType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///货币质押比率
  FundMortgageRatio : TThostFtdcRatioType;
  ///权益算法
  BalanceAlgorithm : TThostFtdcBalanceAlgorithmType;
end;
pCThostFtdcBrokerWithdrawAlgorithmField = ^CThostFtdcBrokerWithdrawAlgorithmField;

///资金账户口令变更域
CThostFtdcTradingAccountPasswordUpdateV1Field = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///原来的口令
  OldPassword : TThostFtdcPasswordType;
  ///新的口令
  NewPassword : TThostFtdcPasswordType;
end;
pCThostFtdcTradingAccountPasswordUpdateV1Field = ^CThostFtdcTradingAccountPasswordUpdateV1Field;

///资金账户口令变更域
CThostFtdcTradingAccountPasswordUpdateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///原来的口令
  OldPassword : TThostFtdcPasswordType;
  ///新的口令
  NewPassword : TThostFtdcPasswordType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcTradingAccountPasswordUpdateField = ^CThostFtdcTradingAccountPasswordUpdateField;

///查询组合合约分腿
CThostFtdcQryCombinationLegField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///单腿编号
  LegID : TThostFtdcLegIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldInstrumentIDType;
  ///组合合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
  ///单腿合约代码
  LegInstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryCombinationLegField = ^CThostFtdcQryCombinationLegField;

///查询组合合约分腿
CThostFtdcQrySyncStatusField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
end;
pCThostFtdcQrySyncStatusField = ^CThostFtdcQrySyncStatusField;

///组合交易合约的单腿
CThostFtdcCombinationLegField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///单腿编号
  LegID : TThostFtdcLegIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldInstrumentIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///单腿乘数
  LegMultiple : TThostFtdcLegMultipleType;
  ///派生层数
  ImplyLevel : TThostFtdcImplyLevelType;
  ///组合合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
  ///单腿合约代码
  LegInstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcCombinationLegField = ^CThostFtdcCombinationLegField;

///数据同步状态
CThostFtdcSyncStatusField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///数据同步状态
  DataSyncStatus : TThostFtdcDataSyncStatusType;
end;
pCThostFtdcSyncStatusField = ^CThostFtdcSyncStatusField;

///查询联系人
CThostFtdcQryLinkManField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryLinkManField = ^CThostFtdcQryLinkManField;

///联系人
CThostFtdcLinkManField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///联系人类型
  PersonType : TThostFtdcPersonTypeType;
  ///证件类型
  IdentifiedCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///名称
  PersonName : TThostFtdcPartyNameType;
  ///联系电话
  Telephone : TThostFtdcTelephoneType;
  ///通讯地址
  Address : TThostFtdcAddressType;
  ///邮政编码
  ZipCode : TThostFtdcZipCodeType;
  ///优先级
  Priority : TThostFtdcPriorityType;
  ///开户邮政编码
  UOAZipCode : TThostFtdcUOAZipCodeType;
  ///全称
  PersonFullName : TThostFtdcInvestorFullNameType;
end;
pCThostFtdcLinkManField = ^CThostFtdcLinkManField;

///查询经纪公司用户事件
CThostFtdcQryBrokerUserEventField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户事件类型
  UserEventType : TThostFtdcUserEventTypeType;
end;
pCThostFtdcQryBrokerUserEventField = ^CThostFtdcQryBrokerUserEventField;

///查询经纪公司用户事件
CThostFtdcBrokerUserEventField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户事件类型
  UserEventType : TThostFtdcUserEventTypeType;
  ///用户事件序号
  EventSequenceNo : TThostFtdcSequenceNoType;
  ///事件发生日期
  EventDate : TThostFtdcDateType;
  ///事件发生时间
  EventTime : TThostFtdcTimeType;
  ///用户事件信息
  UserEventInfo : TThostFtdcUserEventInfoType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///交易中心代码
  DRIdentityID : TThostFtdcDRIdentityIDType;
  ///交易日
  TradingDay : TThostFtdcDateType;
end;
pCThostFtdcBrokerUserEventField = ^CThostFtdcBrokerUserEventField;

///查询签约银行请求
CThostFtdcQryContractBankField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分中心代码
  BankBrchID : TThostFtdcBankBrchIDType;
end;
pCThostFtdcQryContractBankField = ^CThostFtdcQryContractBankField;

///查询签约银行响应
CThostFtdcContractBankField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分中心代码
  BankBrchID : TThostFtdcBankBrchIDType;
  ///银行名称
  BankName : TThostFtdcBankNameType;
end;
pCThostFtdcContractBankField = ^CThostFtdcContractBankField;

///投资者组合持仓明细
CThostFtdcInvestorPositionCombineDetailField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///开仓日期
  OpenDate : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///组合编号
  ComTradeID : TThostFtdcTradeIDType;
  ///撮合编号
  TradeID : TThostFtdcTradeIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///买卖
  Direction : TThostFtdcDirectionType;
  ///持仓量
  TotalAmt : TThostFtdcVolumeType;
  ///投资者保证金
  Margin : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///保证金率
  MarginRateByMoney : TThostFtdcRatioType;
  ///保证金率(按手数)
  MarginRateByVolume : TThostFtdcRatioType;
  ///单腿编号
  LegID : TThostFtdcLegIDType;
  ///单腿乘数
  LegMultiple : TThostFtdcLegMultipleType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldInstrumentIDType;
  ///成交组号
  TradeGroupID : TThostFtdcTradeGroupIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///组合持仓合约编码
  CombInstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInvestorPositionCombineDetailField = ^CThostFtdcInvestorPositionCombineDetailField;

///预埋单
CThostFtdcParkedOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///报单价格条件
  OrderPriceType : TThostFtdcOrderPriceTypeType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///组合开平标志
  CombOffsetFlag : TThostFtdcCombOffsetFlagType;
  ///组合投机套保标志
  CombHedgeFlag : TThostFtdcCombHedgeFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量
  VolumeTotalOriginal : TThostFtdcVolumeType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
  ///GTD日期
  GTDDate : TThostFtdcDateType;
  ///成交量类型
  VolumeCondition : TThostFtdcVolumeConditionType;
  ///最小成交量
  MinVolume : TThostFtdcVolumeType;
  ///触发条件
  ContingentCondition : TThostFtdcContingentConditionType;
  ///止损价
  StopPrice : TThostFtdcPriceType;
  ///强平原因
  ForceCloseReason : TThostFtdcForceCloseReasonType;
  ///自动挂起标志
  IsAutoSuspend : TThostFtdcBoolType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///用户强评标志
  UserForceClose : TThostFtdcBoolType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///预埋报单编号
  ParkedOrderID : TThostFtdcParkedOrderIDType;
  ///用户类型
  UserType : TThostFtdcUserTypeType;
  ///预埋单状态
  Status : TThostFtdcParkedOrderStatusType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///互换单标志
  IsSwapOrder : TThostFtdcBoolType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcParkedOrderField = ^CThostFtdcParkedOrderField;

///输入预埋单操作
CThostFtdcParkedOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报单操作引用
  OrderActionRef : TThostFtdcOrderActionRefType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量变化
  VolumeChange : TThostFtdcVolumeType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///预埋撤单单编号
  ParkedOrderActionID : TThostFtdcParkedOrderActionIDType;
  ///用户类型
  UserType : TThostFtdcUserTypeType;
  ///预埋撤单状态
  Status : TThostFtdcParkedOrderStatusType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcParkedOrderActionField = ^CThostFtdcParkedOrderActionField;

///查询预埋单
CThostFtdcQryParkedOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryParkedOrderField = ^CThostFtdcQryParkedOrderField;

///查询预埋撤单
CThostFtdcQryParkedOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryParkedOrderActionField = ^CThostFtdcQryParkedOrderActionField;

///删除预埋单
CThostFtdcRemoveParkedOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///预埋报单编号
  ParkedOrderID : TThostFtdcParkedOrderIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcRemoveParkedOrderField = ^CThostFtdcRemoveParkedOrderField;

///删除预埋撤单
CThostFtdcRemoveParkedOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///预埋撤单编号
  ParkedOrderActionID : TThostFtdcParkedOrderActionIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcRemoveParkedOrderActionField = ^CThostFtdcRemoveParkedOrderActionField;

///经纪公司可提资金算法表
CThostFtdcInvestorWithdrawAlgorithmField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///可提资金比例
  UsingRatio : TThostFtdcRatioType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///货币质押比率
  FundMortgageRatio : TThostFtdcRatioType;
end;
pCThostFtdcInvestorWithdrawAlgorithmField = ^CThostFtdcInvestorWithdrawAlgorithmField;

///查询组合持仓明细
CThostFtdcQryInvestorPositionCombineDetailField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///组合持仓合约编码
  CombInstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInvestorPositionCombineDetailField = ^CThostFtdcQryInvestorPositionCombineDetailField;

///成交均价
CThostFtdcMarketDataAveragePriceField = record
  ///当日均价
  AveragePrice : TThostFtdcPriceType;
end;
pCThostFtdcMarketDataAveragePriceField = ^CThostFtdcMarketDataAveragePriceField;

///校验投资者密码
CThostFtdcVerifyInvestorPasswordField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///密码
  Password : TThostFtdcPasswordType;
end;
pCThostFtdcVerifyInvestorPasswordField = ^CThostFtdcVerifyInvestorPasswordField;

///用户IP
CThostFtdcUserIPField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
  ///IP地址掩码
  IPMask : TThostFtdcIPAddressType;
end;
pCThostFtdcUserIPField = ^CThostFtdcUserIPField;

///用户事件通知信息
CThostFtdcTradingNoticeInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///发送时间
  SendTime : TThostFtdcTimeType;
  ///消息正文
  FieldContent : TThostFtdcContentType;
  ///序列系列号
  SequenceSeries : TThostFtdcSequenceSeriesType;
  ///序列号
  SequenceNo : TThostFtdcSequenceNoType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcTradingNoticeInfoField = ^CThostFtdcTradingNoticeInfoField;

///用户事件通知
CThostFtdcTradingNoticeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///序列系列号
  SequenceSeries : TThostFtdcSequenceSeriesType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///发送时间
  SendTime : TThostFtdcTimeType;
  ///序列号
  SequenceNo : TThostFtdcSequenceNoType;
  ///消息正文
  FieldContent : TThostFtdcContentType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcTradingNoticeField = ^CThostFtdcTradingNoticeField;

///查询交易事件通知
CThostFtdcQryTradingNoticeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcQryTradingNoticeField = ^CThostFtdcQryTradingNoticeField;

///查询错误报单
CThostFtdcQryErrOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryErrOrderField = ^CThostFtdcQryErrOrderField;

///错误报单
CThostFtdcErrOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///报单价格条件
  OrderPriceType : TThostFtdcOrderPriceTypeType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///组合开平标志
  CombOffsetFlag : TThostFtdcCombOffsetFlagType;
  ///组合投机套保标志
  CombHedgeFlag : TThostFtdcCombHedgeFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量
  VolumeTotalOriginal : TThostFtdcVolumeType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
  ///GTD日期
  GTDDate : TThostFtdcDateType;
  ///成交量类型
  VolumeCondition : TThostFtdcVolumeConditionType;
  ///最小成交量
  MinVolume : TThostFtdcVolumeType;
  ///触发条件
  ContingentCondition : TThostFtdcContingentConditionType;
  ///止损价
  StopPrice : TThostFtdcPriceType;
  ///强平原因
  ForceCloseReason : TThostFtdcForceCloseReasonType;
  ///自动挂起标志
  IsAutoSuspend : TThostFtdcBoolType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///用户强评标志
  UserForceClose : TThostFtdcBoolType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///互换单标志
  IsSwapOrder : TThostFtdcBoolType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///交易编码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcErrOrderField = ^CThostFtdcErrOrderField;

///查询错误报单操作
CThostFtdcErrorConditionalOrderField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///报单价格条件
  OrderPriceType : TThostFtdcOrderPriceTypeType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///组合开平标志
  CombOffsetFlag : TThostFtdcCombOffsetFlagType;
  ///组合投机套保标志
  CombHedgeFlag : TThostFtdcCombHedgeFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量
  VolumeTotalOriginal : TThostFtdcVolumeType;
  ///有效期类型
  TimeCondition : TThostFtdcTimeConditionType;
  ///GTD日期
  GTDDate : TThostFtdcDateType;
  ///成交量类型
  VolumeCondition : TThostFtdcVolumeConditionType;
  ///最小成交量
  MinVolume : TThostFtdcVolumeType;
  ///触发条件
  ContingentCondition : TThostFtdcContingentConditionType;
  ///止损价
  StopPrice : TThostFtdcPriceType;
  ///强平原因
  ForceCloseReason : TThostFtdcForceCloseReasonType;
  ///自动挂起标志
  IsAutoSuspend : TThostFtdcBoolType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldExchangeInstIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///报单提交状态
  OrderSubmitStatus : TThostFtdcOrderSubmitStatusType;
  ///报单提示序号
  NotifySequence : TThostFtdcSequenceNoType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///报单来源
  OrderSource : TThostFtdcOrderSourceType;
  ///报单状态
  OrderStatus : TThostFtdcOrderStatusType;
  ///报单类型
  OrderType : TThostFtdcOrderTypeType;
  ///今成交数量
  VolumeTraded : TThostFtdcVolumeType;
  ///剩余数量
  VolumeTotal : TThostFtdcVolumeType;
  ///报单日期
  InsertDate : TThostFtdcDateType;
  ///委托时间
  InsertTime : TThostFtdcTimeType;
  ///激活时间
  ActiveTime : TThostFtdcTimeType;
  ///挂起时间
  SuspendTime : TThostFtdcTimeType;
  ///最后修改时间
  UpdateTime : TThostFtdcTimeType;
  ///撤销时间
  CancelTime : TThostFtdcTimeType;
  ///最后修改交易所交易员代码
  ActiveTraderID : TThostFtdcTraderIDType;
  ///结算会员编号
  ClearingPartID : TThostFtdcParticipantIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///用户强评标志
  UserForceClose : TThostFtdcBoolType;
  ///操作用户代码
  ActiveUserID : TThostFtdcUserIDType;
  ///经纪公司报单编号
  BrokerOrderSeq : TThostFtdcSequenceNoType;
  ///相关报单
  RelativeOrderSysID : TThostFtdcOrderSysIDType;
  ///郑商所成交数量
  ZCETotalTradedVolume : TThostFtdcVolumeType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///互换单标志
  IsSwapOrder : TThostFtdcBoolType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///资金账号
  AccountID : TThostFtdcAccountIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///保留的无效字段
  reserve3 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcErrorConditionalOrderField = ^CThostFtdcErrorConditionalOrderField;

///查询错误报单操作
CThostFtdcQryErrOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryErrOrderActionField = ^CThostFtdcQryErrOrderActionField;

///错误报单操作
CThostFtdcErrOrderActionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///报单操作引用
  OrderActionRef : TThostFtdcOrderActionRefType;
  ///报单引用
  OrderRef : TThostFtdcOrderRefType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///前置编号
  FrontID : TThostFtdcFrontIDType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///报单编号
  OrderSysID : TThostFtdcOrderSysIDType;
  ///操作标志
  ActionFlag : TThostFtdcActionFlagType;
  ///价格
  LimitPrice : TThostFtdcPriceType;
  ///数量变化
  VolumeChange : TThostFtdcVolumeType;
  ///操作日期
  ActionDate : TThostFtdcDateType;
  ///操作时间
  ActionTime : TThostFtdcTimeType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///本地报单编号
  OrderLocalID : TThostFtdcOrderLocalIDType;
  ///操作本地编号
  ActionLocalID : TThostFtdcOrderLocalIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///客户代码
  ClientID : TThostFtdcClientIDType;
  ///业务单元
  BusinessUnit : TThostFtdcBusinessUnitType;
  ///报单操作状态
  OrderActionStatus : TThostFtdcOrderActionStatusType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///状态信息
  StatusMsg : TThostFtdcErrorMsgType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///营业部编号
  BranchID : TThostFtdcBranchIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldIPAddressType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcErrOrderActionField = ^CThostFtdcErrOrderActionField;

///查询交易所状态
CThostFtdcQryExchangeSequenceField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryExchangeSequenceField = ^CThostFtdcQryExchangeSequenceField;

///交易所状态
CThostFtdcExchangeSequenceField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///序号
  SequenceNo : TThostFtdcSequenceNoType;
  ///合约交易状态
  MarketStatus : TThostFtdcInstrumentStatusType;
end;
pCThostFtdcExchangeSequenceField = ^CThostFtdcExchangeSequenceField;

///根据价格查询最大报单数量
CThostFtdcQryMaxOrderVolumeWithPriceField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///开平标志
  OffsetFlag : TThostFtdcOffsetFlagType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///最大允许报单数量
  MaxVolume : TThostFtdcVolumeType;
  ///报单价格
  Price : TThostFtdcPriceType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryMaxOrderVolumeWithPriceField = ^CThostFtdcQryMaxOrderVolumeWithPriceField;

///查询经纪公司交易参数
CThostFtdcQryBrokerTradingParamsField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
end;
pCThostFtdcQryBrokerTradingParamsField = ^CThostFtdcQryBrokerTradingParamsField;

///经纪公司交易参数
CThostFtdcBrokerTradingParamsField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保证金价格类型
  MarginPriceType : TThostFtdcMarginPriceTypeType;
  ///盈亏算法
  Algorithm : TThostFtdcAlgorithmType;
  ///可用是否包含平仓盈利
  AvailIncludeCloseProfit : TThostFtdcIncludeCloseProfitType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///期权权利金价格类型
  OptionRoyaltyPriceType : TThostFtdcOptionRoyaltyPriceTypeType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
end;
pCThostFtdcBrokerTradingParamsField = ^CThostFtdcBrokerTradingParamsField;

///查询经纪公司交易算法
CThostFtdcQryBrokerTradingAlgosField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryBrokerTradingAlgosField = ^CThostFtdcQryBrokerTradingAlgosField;

///经纪公司交易算法
CThostFtdcBrokerTradingAlgosField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///持仓处理算法编号
  HandlePositionAlgoID : TThostFtdcHandlePositionAlgoIDType;
  ///寻找保证金率算法编号
  FindMarginRateAlgoID : TThostFtdcFindMarginRateAlgoIDType;
  ///资金处理算法编号
  HandleTradingAccountAlgoID : TThostFtdcHandleTradingAccountAlgoIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcBrokerTradingAlgosField = ^CThostFtdcBrokerTradingAlgosField;

///查询经纪公司资金
CThostFtdcQueryBrokerDepositField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQueryBrokerDepositField = ^CThostFtdcQueryBrokerDepositField;

///经纪公司资金
CThostFtdcBrokerDepositField = record
  ///交易日期
  TradingDay : TThostFtdcTradeDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///上次结算准备金
  PreBalance : TThostFtdcMoneyType;
  ///当前保证金总额
  CurrMargin : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///期货结算准备金
  Balance : TThostFtdcMoneyType;
  ///入金金额
  Deposit : TThostFtdcMoneyType;
  ///出金金额
  Withdraw : TThostFtdcMoneyType;
  ///可提资金
  Available : TThostFtdcMoneyType;
  ///基本准备金
  Reserve : TThostFtdcMoneyType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
end;
pCThostFtdcBrokerDepositField = ^CThostFtdcBrokerDepositField;

///查询保证金监管系统经纪公司密钥
CThostFtdcQryCFMMCBrokerKeyField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
end;
pCThostFtdcQryCFMMCBrokerKeyField = ^CThostFtdcQryCFMMCBrokerKeyField;

///保证金监管系统经纪公司密钥
CThostFtdcCFMMCBrokerKeyField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///经纪公司统一编码
  ParticipantID : TThostFtdcParticipantIDType;
  ///密钥生成日期
  CreateDate : TThostFtdcDateType;
  ///密钥生成时间
  CreateTime : TThostFtdcTimeType;
  ///密钥编号
  KeyID : TThostFtdcSequenceNoType;
  ///动态密钥
  CurrentKey : TThostFtdcCFMMCKeyType;
  ///动态密钥类型
  KeyKind : TThostFtdcCFMMCKeyKindType;
end;
pCThostFtdcCFMMCBrokerKeyField = ^CThostFtdcCFMMCBrokerKeyField;

///保证金监管系统经纪公司资金账户密钥
CThostFtdcCFMMCTradingAccountKeyField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///经纪公司统一编码
  ParticipantID : TThostFtdcParticipantIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///密钥编号
  KeyID : TThostFtdcSequenceNoType;
  ///动态密钥
  CurrentKey : TThostFtdcCFMMCKeyType;
end;
pCThostFtdcCFMMCTradingAccountKeyField = ^CThostFtdcCFMMCTradingAccountKeyField;

///请求查询保证金监管系统经纪公司资金账户密钥
CThostFtdcQryCFMMCTradingAccountKeyField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryCFMMCTradingAccountKeyField = ^CThostFtdcQryCFMMCTradingAccountKeyField;

///用户动态令牌参数
CThostFtdcBrokerUserOTPParamField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///动态令牌提供商
  OTPVendorsID : TThostFtdcOTPVendorsIDType;
  ///动态令牌序列号
  SerialNumber : TThostFtdcSerialNumberType;
  ///令牌密钥
  AuthKey : TThostFtdcAuthKeyType;
  ///漂移值
  LastDrift : TThostFtdcLastDriftType;
  ///成功值
  LastSuccess : TThostFtdcLastSuccessType;
  ///动态令牌类型
  OTPType : TThostFtdcOTPTypeType;
end;
pCThostFtdcBrokerUserOTPParamField = ^CThostFtdcBrokerUserOTPParamField;

///手工同步用户动态令牌
CThostFtdcManualSyncBrokerUserOTPField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///动态令牌类型
  OTPType : TThostFtdcOTPTypeType;
  ///第一个动态密码
  FirstOTP : TThostFtdcPasswordType;
  ///第二个动态密码
  SecondOTP : TThostFtdcPasswordType;
end;
pCThostFtdcManualSyncBrokerUserOTPField = ^CThostFtdcManualSyncBrokerUserOTPField;

///投资者手续费率模板
CThostFtdcCommRateModelField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///手续费率模板代码
  CommModelID : TThostFtdcInvestorIDType;
  ///模板名称
  CommModelName : TThostFtdcCommModelNameType;
end;
pCThostFtdcCommRateModelField = ^CThostFtdcCommRateModelField;

///请求查询投资者手续费率模板
CThostFtdcQryCommRateModelField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///手续费率模板代码
  CommModelID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryCommRateModelField = ^CThostFtdcQryCommRateModelField;

///投资者保证金率模板
CThostFtdcMarginModelField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保证金率模板代码
  MarginModelID : TThostFtdcInvestorIDType;
  ///模板名称
  MarginModelName : TThostFtdcCommModelNameType;
end;
pCThostFtdcMarginModelField = ^CThostFtdcMarginModelField;

///请求查询投资者保证金率模板
CThostFtdcQryMarginModelField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///保证金率模板代码
  MarginModelID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQryMarginModelField = ^CThostFtdcQryMarginModelField;

///仓单折抵信息
CThostFtdcEWarrantOffsetField = record
  ///交易日期
  TradingDay : TThostFtdcTradeDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcEWarrantOffsetField = ^CThostFtdcEWarrantOffsetField;

///查询仓单折抵信息
CThostFtdcQryEWarrantOffsetField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryEWarrantOffsetField = ^CThostFtdcQryEWarrantOffsetField;

///查询投资者品种/跨品种保证金
CThostFtdcQryInvestorProductGroupMarginField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///品种/跨品种标示
  ProductGroupID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInvestorProductGroupMarginField = ^CThostFtdcQryInvestorProductGroupMarginField;

///投资者品种/跨品种保证金
CThostFtdcInvestorProductGroupMarginField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
  ///多头冻结的保证金
  LongFrozenMargin : TThostFtdcMoneyType;
  ///空头冻结的保证金
  ShortFrozenMargin : TThostFtdcMoneyType;
  ///占用的保证金
  UseMargin : TThostFtdcMoneyType;
  ///多头保证金
  LongUseMargin : TThostFtdcMoneyType;
  ///空头保证金
  ShortUseMargin : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///交易所多头保证金
  LongExchMargin : TThostFtdcMoneyType;
  ///交易所空头保证金
  ShortExchMargin : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///持仓盈亏
  PositionProfit : TThostFtdcMoneyType;
  ///折抵总金额
  OffsetAmount : TThostFtdcMoneyType;
  ///多头折抵总金额
  LongOffsetAmount : TThostFtdcMoneyType;
  ///空头折抵总金额
  ShortOffsetAmount : TThostFtdcMoneyType;
  ///交易所折抵总金额
  ExchOffsetAmount : TThostFtdcMoneyType;
  ///交易所多头折抵总金额
  LongExchOffsetAmount : TThostFtdcMoneyType;
  ///交易所空头折抵总金额
  ShortExchOffsetAmount : TThostFtdcMoneyType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///品种/跨品种标示
  ProductGroupID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcInvestorProductGroupMarginField = ^CThostFtdcInvestorProductGroupMarginField;

///查询监控中心用户令牌
CThostFtdcQueryCFMMCTradingAccountTokenField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
end;
pCThostFtdcQueryCFMMCTradingAccountTokenField = ^CThostFtdcQueryCFMMCTradingAccountTokenField;

///监控中心用户令牌
CThostFtdcCFMMCTradingAccountTokenField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///经纪公司统一编码
  ParticipantID : TThostFtdcParticipantIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///密钥编号
  KeyID : TThostFtdcSequenceNoType;
  ///动态令牌
  Token : TThostFtdcCFMMCTokenType;
end;
pCThostFtdcCFMMCTradingAccountTokenField = ^CThostFtdcCFMMCTradingAccountTokenField;

///查询产品组
CThostFtdcQryProductGroupField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryProductGroupField = ^CThostFtdcQryProductGroupField;

///投资者品种/跨品种保证金产品组
CThostFtdcProductGroupField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///保留的无效字段
  reserve2 : TThostFtdcOldInstrumentIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
  ///产品组代码
  ProductGroupID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcProductGroupField = ^CThostFtdcProductGroupField;

///交易所公告
CThostFtdcBulletinField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///公告编号
  BulletinID : TThostFtdcBulletinIDType;
  ///序列号
  SequenceNo : TThostFtdcSequenceNoType;
  ///公告类型
  NewsType : TThostFtdcNewsTypeType;
  ///紧急程度
  NewsUrgency : TThostFtdcNewsUrgencyType;
  ///发送时间
  SendTime : TThostFtdcTimeType;
  ///消息摘要
  Abstract : TThostFtdcAbstractType;
  ///消息来源
  ComeFrom : TThostFtdcComeFromType;
  ///消息正文
  Content : TThostFtdcContentType;
  ///WEB地址
  URLLink : TThostFtdcURLLinkType;
  ///市场代码
  MarketID : TThostFtdcMarketIDType;
end;
pCThostFtdcBulletinField = ^CThostFtdcBulletinField;

///查询交易所公告
CThostFtdcQryBulletinField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///公告编号
  BulletinID : TThostFtdcBulletinIDType;
  ///序列号
  SequenceNo : TThostFtdcSequenceNoType;
  ///公告类型
  NewsType : TThostFtdcNewsTypeType;
  ///紧急程度
  NewsUrgency : TThostFtdcNewsUrgencyType;
end;
pCThostFtdcQryBulletinField = ^CThostFtdcQryBulletinField;

///MulticastInstrument
CThostFtdcMulticastInstrumentField = record
  ///主题号
  TopicID : TThostFtdcInstallIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约编号
  InstrumentNo : TThostFtdcInstallIDType;
  ///基准价
  CodePrice : TThostFtdcPriceType;
  ///合约数量乘数
  VolumeMultiple : TThostFtdcVolumeMultipleType;
  ///最小变动价位
  PriceTick : TThostFtdcPriceType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcMulticastInstrumentField = ^CThostFtdcMulticastInstrumentField;

///QryMulticastInstrument
CThostFtdcQryMulticastInstrumentField = record
  ///主题号
  TopicID : TThostFtdcInstallIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldInstrumentIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryMulticastInstrumentField = ^CThostFtdcQryMulticastInstrumentField;

///App客户端权限分配
CThostFtdcAppIDAuthAssignField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///App代码
  AppID : TThostFtdcAppIDType;
  ///交易中心代码
  DRIdentityID : TThostFtdcDRIdentityIDType;
end;
pCThostFtdcAppIDAuthAssignField = ^CThostFtdcAppIDAuthAssignField;

///转帐开户请求
CThostFtdcReqOpenAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///汇钞标志
  CashExchangeCode : TThostFtdcCashExchangeCodeType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcReqOpenAccountField = ^CThostFtdcReqOpenAccountField;

///转帐销户请求
CThostFtdcReqCancelAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///汇钞标志
  CashExchangeCode : TThostFtdcCashExchangeCodeType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcReqCancelAccountField = ^CThostFtdcReqCancelAccountField;

///变更银行账户请求
CThostFtdcReqChangeAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///新银行帐号
  NewBankAccount : TThostFtdcBankAccountType;
  ///新银行密码
  NewBankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcReqChangeAccountField = ^CThostFtdcReqChangeAccountField;

///转账请求
CThostFtdcReqTransferField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///转帐金额
  TradeAmount : TThostFtdcTradeAmountType;
  ///期货可取金额
  FutureFetchAmount : TThostFtdcTradeAmountType;
  ///费用支付标志
  FeePayFlag : TThostFtdcFeePayFlagType;
  ///应收客户费用
  CustFee : TThostFtdcCustFeeType;
  ///应收期货公司费用
  BrokerFee : TThostFtdcFutureFeeType;
  ///发送方给接收方的消息
  Message : TThostFtdcAddInfoType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///转账交易状态
  TransferStatus : TThostFtdcTransferStatusType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcReqTransferField = ^CThostFtdcReqTransferField;

///银行发起银行资金转期货响应
CThostFtdcRspTransferField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///转帐金额
  TradeAmount : TThostFtdcTradeAmountType;
  ///期货可取金额
  FutureFetchAmount : TThostFtdcTradeAmountType;
  ///费用支付标志
  FeePayFlag : TThostFtdcFeePayFlagType;
  ///应收客户费用
  CustFee : TThostFtdcCustFeeType;
  ///应收期货公司费用
  BrokerFee : TThostFtdcFutureFeeType;
  ///发送方给接收方的消息
  Message : TThostFtdcAddInfoType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///转账交易状态
  TransferStatus : TThostFtdcTransferStatusType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcRspTransferField = ^CThostFtdcRspTransferField;

///冲正请求
CThostFtdcReqRepealField = record
  ///冲正时间间隔
  RepealTimeInterval : TThostFtdcRepealTimeIntervalType;
  ///已经冲正次数
  RepealedTimes : TThostFtdcRepealedTimesType;
  ///银行冲正标志
  BankRepealFlag : TThostFtdcBankRepealFlagType;
  ///期商冲正标志
  BrokerRepealFlag : TThostFtdcBrokerRepealFlagType;
  ///被冲正平台流水号
  PlateRepealSerial : TThostFtdcPlateSerialType;
  ///被冲正银行流水号
  BankRepealSerial : TThostFtdcBankSerialType;
  ///被冲正期货流水号
  FutureRepealSerial : TThostFtdcFutureSerialType;
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///转帐金额
  TradeAmount : TThostFtdcTradeAmountType;
  ///期货可取金额
  FutureFetchAmount : TThostFtdcTradeAmountType;
  ///费用支付标志
  FeePayFlag : TThostFtdcFeePayFlagType;
  ///应收客户费用
  CustFee : TThostFtdcCustFeeType;
  ///应收期货公司费用
  BrokerFee : TThostFtdcFutureFeeType;
  ///发送方给接收方的消息
  Message : TThostFtdcAddInfoType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///转账交易状态
  TransferStatus : TThostFtdcTransferStatusType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcReqRepealField = ^CThostFtdcReqRepealField;

///冲正响应
CThostFtdcRspRepealField = record
  ///冲正时间间隔
  RepealTimeInterval : TThostFtdcRepealTimeIntervalType;
  ///已经冲正次数
  RepealedTimes : TThostFtdcRepealedTimesType;
  ///银行冲正标志
  BankRepealFlag : TThostFtdcBankRepealFlagType;
  ///期商冲正标志
  BrokerRepealFlag : TThostFtdcBrokerRepealFlagType;
  ///被冲正平台流水号
  PlateRepealSerial : TThostFtdcPlateSerialType;
  ///被冲正银行流水号
  BankRepealSerial : TThostFtdcBankSerialType;
  ///被冲正期货流水号
  FutureRepealSerial : TThostFtdcFutureSerialType;
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///转帐金额
  TradeAmount : TThostFtdcTradeAmountType;
  ///期货可取金额
  FutureFetchAmount : TThostFtdcTradeAmountType;
  ///费用支付标志
  FeePayFlag : TThostFtdcFeePayFlagType;
  ///应收客户费用
  CustFee : TThostFtdcCustFeeType;
  ///应收期货公司费用
  BrokerFee : TThostFtdcFutureFeeType;
  ///发送方给接收方的消息
  Message : TThostFtdcAddInfoType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///转账交易状态
  TransferStatus : TThostFtdcTransferStatusType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcRspRepealField = ^CThostFtdcRspRepealField;

///查询账户信息请求
CThostFtdcReqQueryAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcReqQueryAccountField = ^CThostFtdcReqQueryAccountField;

///查询账户信息响应
CThostFtdcRspQueryAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///银行可用金额
  BankUseAmount : TThostFtdcTradeAmountType;
  ///银行可取金额
  BankFetchAmount : TThostFtdcTradeAmountType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcRspQueryAccountField = ^CThostFtdcRspQueryAccountField;

///期商签到签退
CThostFtdcFutureSignIOField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
end;
pCThostFtdcFutureSignIOField = ^CThostFtdcFutureSignIOField;

///期商签到响应
CThostFtdcRspFutureSignInField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///PIN密钥
  PinKey : TThostFtdcPasswordKeyType;
  ///MAC密钥
  MacKey : TThostFtdcPasswordKeyType;
end;
pCThostFtdcRspFutureSignInField = ^CThostFtdcRspFutureSignInField;

///期商签退请求
CThostFtdcReqFutureSignOutField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
end;
pCThostFtdcReqFutureSignOutField = ^CThostFtdcReqFutureSignOutField;

///期商签退响应
CThostFtdcRspFutureSignOutField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcRspFutureSignOutField = ^CThostFtdcRspFutureSignOutField;

///查询指定流水号的交易结果请求
CThostFtdcReqQueryTradeResultBySerialField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///流水号
  Reference : TThostFtdcSerialType;
  ///本流水号发布者的机构类型
  RefrenceIssureType : TThostFtdcInstitutionTypeType;
  ///本流水号发布者机构编码
  RefrenceIssure : TThostFtdcOrganCodeType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///转帐金额
  TradeAmount : TThostFtdcTradeAmountType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcReqQueryTradeResultBySerialField = ^CThostFtdcReqQueryTradeResultBySerialField;

///查询指定流水号的交易结果响应
CThostFtdcRspQueryTradeResultBySerialField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///流水号
  Reference : TThostFtdcSerialType;
  ///本流水号发布者的机构类型
  RefrenceIssureType : TThostFtdcInstitutionTypeType;
  ///本流水号发布者机构编码
  RefrenceIssure : TThostFtdcOrganCodeType;
  ///原始返回代码
  OriginReturnCode : TThostFtdcReturnCodeType;
  ///原始返回码描述
  OriginDescrInfoForReturnCode : TThostFtdcDescrInfoForReturnCodeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///转帐金额
  TradeAmount : TThostFtdcTradeAmountType;
  ///摘要
  Digest : TThostFtdcDigestType;
end;
pCThostFtdcRspQueryTradeResultBySerialField = ^CThostFtdcRspQueryTradeResultBySerialField;

///日终文件就绪请求
CThostFtdcReqDayEndFileReadyField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///文件业务功能
  FileBusinessCode : TThostFtdcFileBusinessCodeType;
  ///摘要
  Digest : TThostFtdcDigestType;
end;
pCThostFtdcReqDayEndFileReadyField = ^CThostFtdcReqDayEndFileReadyField;

///返回结果
CThostFtdcReturnResultField = record
  ///返回代码
  ReturnCode : TThostFtdcReturnCodeType;
  ///返回码描述
  DescrInfoForReturnCode : TThostFtdcDescrInfoForReturnCodeType;
end;
pCThostFtdcReturnResultField = ^CThostFtdcReturnResultField;

///验证期货资金密码
CThostFtdcVerifyFuturePasswordField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcVerifyFuturePasswordField = ^CThostFtdcVerifyFuturePasswordField;

///验证客户信息
CThostFtdcVerifyCustInfoField = record
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcVerifyCustInfoField = ^CThostFtdcVerifyCustInfoField;

///验证期货资金密码和客户信息
CThostFtdcVerifyFuturePasswordAndCustInfoField = record
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcVerifyFuturePasswordAndCustInfoField = ^CThostFtdcVerifyFuturePasswordAndCustInfoField;

///验证期货资金密码和客户信息
CThostFtdcDepositResultInformField = record
  ///出入金流水号，该流水号为银期报盘返回的流水号
  DepositSeqNo : TThostFtdcDepositSeqNoType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///入金金额
  Deposit : TThostFtdcMoneyType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///返回代码
  ReturnCode : TThostFtdcReturnCodeType;
  ///返回码描述
  DescrInfoForReturnCode : TThostFtdcDescrInfoForReturnCodeType;
end;
pCThostFtdcDepositResultInformField = ^CThostFtdcDepositResultInformField;

///交易核心向银期报盘发出密钥同步请求
CThostFtdcReqSyncKeyField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///交易核心给银期报盘的消息
  Message : TThostFtdcAddInfoType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
end;
pCThostFtdcReqSyncKeyField = ^CThostFtdcReqSyncKeyField;

///交易核心向银期报盘发出密钥同步响应
CThostFtdcRspSyncKeyField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///交易核心给银期报盘的消息
  Message : TThostFtdcAddInfoType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcRspSyncKeyField = ^CThostFtdcRspSyncKeyField;

///查询账户信息通知
CThostFtdcNotifyQueryAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///银行可用金额
  BankUseAmount : TThostFtdcTradeAmountType;
  ///银行可取金额
  BankFetchAmount : TThostFtdcTradeAmountType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcNotifyQueryAccountField = ^CThostFtdcNotifyQueryAccountField;

///银期转账交易流水表
CThostFtdcTransferSerialField = record
  ///平台流水号
  PlateSerial : TThostFtdcPlateSerialType;
  ///交易发起方日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易日期
  TradingDay : TThostFtdcDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///交易代码
  TradeCode : TThostFtdcTradeCodeType;
  ///会话编号
  SessionID : TThostFtdcSessionIDType;
  ///银行编码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构编码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///期货公司编码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///期货公司帐号类型
  FutureAccType : TThostFtdcFutureAccTypeType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///期货公司流水号
  FutureSerial : TThostFtdcFutureSerialType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///交易金额
  TradeAmount : TThostFtdcTradeAmountType;
  ///应收客户费用
  CustFee : TThostFtdcCustFeeType;
  ///应收期货公司费用
  BrokerFee : TThostFtdcFutureFeeType;
  ///有效标志
  AvailabilityFlag : TThostFtdcAvailabilityFlagType;
  ///操作员
  OperatorCode : TThostFtdcOperatorCodeType;
  ///新银行帐号
  BankNewAccount : TThostFtdcBankAccountType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcTransferSerialField = ^CThostFtdcTransferSerialField;

///请求查询转帐流水
CThostFtdcQryTransferSerialField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///银行编码
  BankID : TThostFtdcBankIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcQryTransferSerialField = ^CThostFtdcQryTransferSerialField;

///期商签到通知
CThostFtdcNotifyFutureSignInField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///PIN密钥
  PinKey : TThostFtdcPasswordKeyType;
  ///MAC密钥
  MacKey : TThostFtdcPasswordKeyType;
end;
pCThostFtdcNotifyFutureSignInField = ^CThostFtdcNotifyFutureSignInField;

///期商签退通知
CThostFtdcNotifyFutureSignOutField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcNotifyFutureSignOutField = ^CThostFtdcNotifyFutureSignOutField;

///交易核心向银期报盘发出密钥同步处理结果的通知
CThostFtdcNotifySyncKeyField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///交易核心给银期报盘的消息
  Message : TThostFtdcAddInfoType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///请求编号
  RequestID : TThostFtdcRequestIDType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcNotifySyncKeyField = ^CThostFtdcNotifySyncKeyField;

///请求查询银期签约关系
CThostFtdcQryAccountregisterField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///银行编码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构编码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcQryAccountregisterField = ^CThostFtdcQryAccountregisterField;

///客户开销户信息表
CThostFtdcAccountregisterField = record
  ///交易日期
  TradeDay : TThostFtdcTradeDateType;
  ///银行编码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构编码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///期货公司编码
  BrokerID : TThostFtdcBrokerIDType;
  ///期货公司分支机构编码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///开销户类别
  OpenOrDestroy : TThostFtdcOpenOrDestroyType;
  ///签约日期
  RegDate : TThostFtdcTradeDateType;
  ///解约日期
  OutDate : TThostFtdcTradeDateType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcAccountregisterField = ^CThostFtdcAccountregisterField;

///银期开户信息
CThostFtdcOpenAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///汇钞标志
  CashExchangeCode : TThostFtdcCashExchangeCodeType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcOpenAccountField = ^CThostFtdcOpenAccountField;

///银期销户信息
CThostFtdcCancelAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///汇钞标志
  CashExchangeCode : TThostFtdcCashExchangeCodeType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///渠道标志
  DeviceID : TThostFtdcDeviceIDType;
  ///期货单位帐号类型
  BankSecuAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///期货单位帐号
  BankSecuAcc : TThostFtdcBankAccountType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易柜员
  OperNo : TThostFtdcOperNoType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///用户标识
  UserID : TThostFtdcUserIDType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcCancelAccountField = ^CThostFtdcCancelAccountField;

///银期变更银行账号信息
CThostFtdcChangeAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///新银行帐号
  NewBankAccount : TThostFtdcBankAccountType;
  ///新银行密码
  NewBankPassWord : TThostFtdcPasswordType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///银行密码标志
  BankPwdFlag : TThostFtdcPwdFlagType;
  ///期货资金密码核对标志
  SecuPwdFlag : TThostFtdcPwdFlagType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
  ///长客户姓名
  LongCustomerName : TThostFtdcLongIndividualNameType;
end;
pCThostFtdcChangeAccountField = ^CThostFtdcChangeAccountField;

///二级代理操作员银期权限
CThostFtdcSecAgentACIDMapField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///资金账户
  AccountID : TThostFtdcAccountIDType;
  ///币种
  CurrencyID : TThostFtdcCurrencyIDType;
  ///境外中介机构资金帐号
  BrokerSecAgentID : TThostFtdcAccountIDType;
end;
pCThostFtdcSecAgentACIDMapField = ^CThostFtdcSecAgentACIDMapField;

///二级代理操作员银期权限查询
CThostFtdcQrySecAgentACIDMapField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///资金账户
  AccountID : TThostFtdcAccountIDType;
  ///币种
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcQrySecAgentACIDMapField = ^CThostFtdcQrySecAgentACIDMapField;

///灾备中心交易权限
CThostFtdcUserRightsAssignField = record
  ///应用单元代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///交易中心代码
  DRIdentityID : TThostFtdcDRIdentityIDType;
end;
pCThostFtdcUserRightsAssignField = ^CThostFtdcUserRightsAssignField;

///经济公司是否有在本标示的交易权限
CThostFtdcBrokerUserRightAssignField = record
  ///应用单元代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易中心代码
  DRIdentityID : TThostFtdcDRIdentityIDType;
  ///能否交易
  Tradeable : TThostFtdcBoolType;
end;
pCThostFtdcBrokerUserRightAssignField = ^CThostFtdcBrokerUserRightAssignField;

///灾备交易转换报文
CThostFtdcDRTransferField = record
  ///原交易中心代码
  OrigDRIdentityID : TThostFtdcDRIdentityIDType;
  ///目标交易中心代码
  DestDRIdentityID : TThostFtdcDRIdentityIDType;
  ///原应用单元代码
  OrigBrokerID : TThostFtdcBrokerIDType;
  ///目标易用单元代码
  DestBrokerID : TThostFtdcBrokerIDType;
end;
pCThostFtdcDRTransferField = ^CThostFtdcDRTransferField;

///Fens用户信息
CThostFtdcFensUserInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///登录模式
  LoginMode : TThostFtdcLoginModeType;
end;
pCThostFtdcFensUserInfoField = ^CThostFtdcFensUserInfoField;

///当前银期所属交易中心
CThostFtdcCurrTransferIdentityField = record
  ///交易中心代码
  IdentityID : TThostFtdcDRIdentityIDType;
end;
pCThostFtdcCurrTransferIdentityField = ^CThostFtdcCurrTransferIdentityField;

///禁止登录用户
CThostFtdcLoginForbiddenUserField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcLoginForbiddenUserField = ^CThostFtdcLoginForbiddenUserField;

///查询禁止登录用户
CThostFtdcQryLoginForbiddenUserField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQryLoginForbiddenUserField = ^CThostFtdcQryLoginForbiddenUserField;

///资金账户基本准备金
CThostFtdcTradingAccountReserveField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///基本准备金
  Reserve : TThostFtdcMoneyType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcTradingAccountReserveField = ^CThostFtdcTradingAccountReserveField;

///查询禁止登录IP
CThostFtdcQryLoginForbiddenIPField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcQryLoginForbiddenIPField = ^CThostFtdcQryLoginForbiddenIPField;

///查询IP列表
CThostFtdcQryIPListField = record
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcQryIPListField = ^CThostFtdcQryIPListField;

///查询用户下单权限分配表
CThostFtdcQryUserRightsAssignField = record
  ///应用单元代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQryUserRightsAssignField = ^CThostFtdcQryUserRightsAssignField;

///银期预约开户确认请求
CThostFtdcReserveOpenAccountConfirmField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcLongIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///期货密码
  Password : TThostFtdcPasswordType;
  ///预约开户银行流水号
  BankReserveOpenSeq : TThostFtdcBankSerialType;
  ///预约开户日期
  BookDate : TThostFtdcTradeDateType;
  ///预约开户验证密码
  BookPsw : TThostFtdcPasswordType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcReserveOpenAccountConfirmField = ^CThostFtdcReserveOpenAccountConfirmField;

///银期预约开户
CThostFtdcReserveOpenAccountField = record
  ///业务功能码
  TradeCode : TThostFtdcTradeCodeType;
  ///银行代码
  BankID : TThostFtdcBankIDType;
  ///银行分支机构代码
  BankBranchID : TThostFtdcBankBrchIDType;
  ///期商代码
  BrokerID : TThostFtdcBrokerIDType;
  ///期商分支机构代码
  BrokerBranchID : TThostFtdcFutureBranchIDType;
  ///交易日期
  TradeDate : TThostFtdcTradeDateType;
  ///交易时间
  TradeTime : TThostFtdcTradeTimeType;
  ///银行流水号
  BankSerial : TThostFtdcBankSerialType;
  ///交易系统日期 
  TradingDay : TThostFtdcTradeDateType;
  ///银期平台消息流水号
  PlateSerial : TThostFtdcSerialType;
  ///最后分片标志
  LastFragment : TThostFtdcLastFragmentType;
  ///会话号
  SessionID : TThostFtdcSessionIDType;
  ///客户姓名
  CustomerName : TThostFtdcLongIndividualNameType;
  ///证件类型
  IdCardType : TThostFtdcIdCardTypeType;
  ///证件号码
  IdentifiedCardNo : TThostFtdcIdentifiedCardNoType;
  ///性别
  Gender : TThostFtdcGenderType;
  ///国家代码
  CountryCode : TThostFtdcCountryCodeType;
  ///客户类型
  CustType : TThostFtdcCustTypeType;
  ///地址
  Address : TThostFtdcAddressType;
  ///邮编
  ZipCode : TThostFtdcZipCodeType;
  ///电话号码
  Telephone : TThostFtdcTelephoneType;
  ///手机
  MobilePhone : TThostFtdcMobilePhoneType;
  ///传真
  Fax : TThostFtdcFaxType;
  ///电子邮件
  EMail : TThostFtdcEMailType;
  ///资金账户状态
  MoneyAccountStatus : TThostFtdcMoneyAccountStatusType;
  ///银行帐号
  BankAccount : TThostFtdcBankAccountType;
  ///银行密码
  BankPassWord : TThostFtdcPasswordType;
  ///安装编号
  InstallID : TThostFtdcInstallIDType;
  ///验证客户证件号码标志
  VerifyCertNoFlag : TThostFtdcYesNoIndicatorType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///摘要
  Digest : TThostFtdcDigestType;
  ///银行帐号类型
  BankAccType : TThostFtdcBankAccTypeType;
  ///期货公司银行编码
  BrokerIDByBank : TThostFtdcBankCodingForFutureType;
  ///交易ID
  TID : TThostFtdcTIDType;
  ///预约开户状态
  ReserveOpenAccStas : TThostFtdcReserveOpenAccStasType;
  ///错误代码
  ErrorID : TThostFtdcErrorIDType;
  ///错误信息
  ErrorMsg : TThostFtdcErrorMsgType;
end;
pCThostFtdcReserveOpenAccountField = ^CThostFtdcReserveOpenAccountField;

///银行账户属性
CThostFtdcAccountPropertyField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///银行统一标识类型
  BankID : TThostFtdcBankIDType;
  ///银行账户
  BankAccount : TThostFtdcBankAccountType;
  ///银行账户的开户人名称
  OpenName : TThostFtdcInvestorFullNameType;
  ///银行账户的开户行
  OpenBank : TThostFtdcOpenBankType;
  ///是否活跃
  IsActive : TThostFtdcBoolType;
  ///账户来源
  AccountSourceType : TThostFtdcAccountSourceTypeType;
  ///开户日期
  OpenDate : TThostFtdcDateType;
  ///注销日期
  CancelDate : TThostFtdcDateType;
  ///录入员代码
  OperatorID : TThostFtdcOperatorIDType;
  ///录入日期
  OperateDate : TThostFtdcDateType;
  ///录入时间
  OperateTime : TThostFtdcTimeType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
end;
pCThostFtdcAccountPropertyField = ^CThostFtdcAccountPropertyField;

///查询当前交易中心
CThostFtdcQryCurrDRIdentityField = record
  ///交易中心代码
  DRIdentityID : TThostFtdcDRIdentityIDType;
end;
pCThostFtdcQryCurrDRIdentityField = ^CThostFtdcQryCurrDRIdentityField;

///当前交易中心
CThostFtdcCurrDRIdentityField = record
  ///交易中心代码
  DRIdentityID : TThostFtdcDRIdentityIDType;
end;
pCThostFtdcCurrDRIdentityField = ^CThostFtdcCurrDRIdentityField;

///查询二级代理商资金校验模式
CThostFtdcQrySecAgentCheckModeField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQrySecAgentCheckModeField = ^CThostFtdcQrySecAgentCheckModeField;

///查询二级代理商信息
CThostFtdcQrySecAgentTradeInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///境外中介机构资金帐号
  BrokerSecAgentID : TThostFtdcAccountIDType;
end;
pCThostFtdcQrySecAgentTradeInfoField = ^CThostFtdcQrySecAgentTradeInfoField;

///用户发出获取安全安全登陆方法请求
CThostFtdcReqUserAuthMethodField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcReqUserAuthMethodField = ^CThostFtdcReqUserAuthMethodField;

///用户发出获取安全安全登陆方法回复
CThostFtdcRspUserAuthMethodField = record
  ///当前可以用的认证模式
  UsableAuthMethod : TThostFtdcCurrentAuthMethodType;
end;
pCThostFtdcRspUserAuthMethodField = ^CThostFtdcRspUserAuthMethodField;

///用户发出获取安全安全登陆方法请求
CThostFtdcReqGenUserCaptchaField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcReqGenUserCaptchaField = ^CThostFtdcReqGenUserCaptchaField;

///生成的图片验证码信息
CThostFtdcRspGenUserCaptchaField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///图片信息长度
  CaptchaInfoLen : TThostFtdcCaptchaInfoLenType;
  ///图片信息
  CaptchaInfo : TThostFtdcCaptchaInfoType;
end;
pCThostFtdcRspGenUserCaptchaField = ^CThostFtdcRspGenUserCaptchaField;

///用户发出获取安全安全登陆方法请求
CThostFtdcReqGenUserTextField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcReqGenUserTextField = ^CThostFtdcReqGenUserTextField;

///短信验证码生成的回复
CThostFtdcRspGenUserTextField = record
  ///短信验证码序号
  UserTextSeq : TThostFtdcUserTextSeqType;
end;
pCThostFtdcRspGenUserTextField = ^CThostFtdcRspGenUserTextField;

///用户发出带图形验证码的登录请求请求
CThostFtdcReqUserLoginWithCaptchaField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///接口端产品信息
  InterfaceProductInfo : TThostFtdcProductInfoType;
  ///协议信息
  ProtocolInfo : TThostFtdcProtocolInfoType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///登录备注
  LoginRemark : TThostFtdcLoginRemarkType;
  ///图形验证码的文字内容
  Captcha : TThostFtdcPasswordType;
  ///终端IP端口
  ClientIPPort : TThostFtdcIPPortType;
  ///终端IP地址
  ClientIPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcReqUserLoginWithCaptchaField = ^CThostFtdcReqUserLoginWithCaptchaField;

///用户发出带短信验证码的登录请求请求
CThostFtdcReqUserLoginWithTextField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///接口端产品信息
  InterfaceProductInfo : TThostFtdcProductInfoType;
  ///协议信息
  ProtocolInfo : TThostFtdcProtocolInfoType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///登录备注
  LoginRemark : TThostFtdcLoginRemarkType;
  ///短信验证码文字内容
  Text : TThostFtdcPasswordType;
  ///终端IP端口
  ClientIPPort : TThostFtdcIPPortType;
  ///终端IP地址
  ClientIPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcReqUserLoginWithTextField = ^CThostFtdcReqUserLoginWithTextField;

///用户发出带动态验证码的登录请求请求
CThostFtdcReqUserLoginWithOTPField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///接口端产品信息
  InterfaceProductInfo : TThostFtdcProductInfoType;
  ///协议信息
  ProtocolInfo : TThostFtdcProtocolInfoType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///登录备注
  LoginRemark : TThostFtdcLoginRemarkType;
  ///OTP密码
  OTPPassword : TThostFtdcPasswordType;
  ///终端IP端口
  ClientIPPort : TThostFtdcIPPortType;
  ///终端IP地址
  ClientIPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcReqUserLoginWithOTPField = ^CThostFtdcReqUserLoginWithOTPField;

///api握手请求
CThostFtdcReqApiHandshakeField = record
  ///api与front通信密钥版本号
  CryptoKeyVersion : TThostFtdcCryptoKeyVersionType;
end;
pCThostFtdcReqApiHandshakeField = ^CThostFtdcReqApiHandshakeField;

///front发给api的握手回复
CThostFtdcRspApiHandshakeField = record
  ///握手回复数据长度
  FrontHandshakeDataLen : TThostFtdcHandshakeDataLenType;
  ///握手回复数据
  FrontHandshakeData : TThostFtdcHandshakeDataType;
  ///API认证是否开启
  IsApiAuthEnabled : TThostFtdcBoolType;
end;
pCThostFtdcRspApiHandshakeField = ^CThostFtdcRspApiHandshakeField;

///api给front的验证key的请求
CThostFtdcReqVerifyApiKeyField = record
  ///握手回复数据长度
  ApiHandshakeDataLen : TThostFtdcHandshakeDataLenType;
  ///握手回复数据
  ApiHandshakeData : TThostFtdcHandshakeDataType;
end;
pCThostFtdcReqVerifyApiKeyField = ^CThostFtdcReqVerifyApiKeyField;

///操作员组织架构关系
CThostFtdcDepartmentUserField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///投资者范围
  InvestorRange : TThostFtdcDepartmentRangeType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcDepartmentUserField = ^CThostFtdcDepartmentUserField;

///查询频率，每秒查询比数
CThostFtdcQueryFreqField = record
  ///查询频率
  QueryFreq : TThostFtdcQueryFreqType;
end;
pCThostFtdcQueryFreqField = ^CThostFtdcQueryFreqField;

///禁止认证IP
CThostFtdcAuthForbiddenIPField = record
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcAuthForbiddenIPField = ^CThostFtdcAuthForbiddenIPField;

///查询禁止认证IP
CThostFtdcQryAuthForbiddenIPField = record
  ///IP地址
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcQryAuthForbiddenIPField = ^CThostFtdcQryAuthForbiddenIPField;

///换汇可提冻结
CThostFtdcSyncDelaySwapFrozenField = record
  ///换汇流水号
  DelaySwapSeqNo : TThostFtdcDepositSeqNoType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///源币种
  FromCurrencyID : TThostFtdcCurrencyIDType;
  ///源剩余换汇额度(可提冻结)
  FromRemainSwap : TThostFtdcMoneyType;
  ///是否手工换汇
  IsManualSwap : TThostFtdcBoolType;
end;
pCThostFtdcSyncDelaySwapFrozenField = ^CThostFtdcSyncDelaySwapFrozenField;

///用户系统信息
CThostFtdcUserSystemInfoField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///用户端系统内部信息长度
  ClientSystemInfoLen : TThostFtdcSystemInfoLenType;
  ///用户端系统内部信息
  ClientSystemInfo : TThostFtdcClientSystemInfoType;
  ///保留的无效字段
  reserve1 : TThostFtdcOldIPAddressType;
  ///终端IP端口
  ClientIPPort : TThostFtdcIPPortType;
  ///登录成功时间
  ClientLoginTime : TThostFtdcTimeType;
  ///App代码
  ClientAppID : TThostFtdcAppIDType;
  ///用户公网IP
  ClientPublicIP : TThostFtdcIPAddressType;
  ///客户登录备注2
  ClientLoginRemark : TThostFtdcClientLoginRemarkType;
end;
pCThostFtdcUserSystemInfoField = ^CThostFtdcUserSystemInfoField;

///终端用户绑定信息
CThostFtdcAuthUserIDField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///App代码
  AppID : TThostFtdcAppIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///校验类型
  AuthType : TThostFtdcAuthTypeType;
end;
pCThostFtdcAuthUserIDField = ^CThostFtdcAuthUserIDField;

///用户IP绑定信息
CThostFtdcAuthIPField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///App代码
  AppID : TThostFtdcAppIDType;
  ///用户代码
  IPAddress : TThostFtdcIPAddressType;
end;
pCThostFtdcAuthIPField = ^CThostFtdcAuthIPField;

///查询分类合约
CThostFtdcQryClassifiedInstrumentField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
  ///合约交易状态
  TradingType : TThostFtdcTradingTypeType;
  ///合约分类类型
  ClassType : TThostFtdcClassTypeType;
end;
pCThostFtdcQryClassifiedInstrumentField = ^CThostFtdcQryClassifiedInstrumentField;

///查询组合优惠比例
CThostFtdcQryCombPromotionParamField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryCombPromotionParamField = ^CThostFtdcQryCombPromotionParamField;

///组合优惠比例
CThostFtdcCombPromotionParamField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投机套保标志
  CombHedgeFlag : TThostFtdcCombHedgeFlagType;
  ///期权组合保证金比例
  Xparameter : TThostFtdcDiscountRatioType;
end;
pCThostFtdcCombPromotionParamField = ^CThostFtdcCombPromotionParamField;

///国密用户登录请求
CThostFtdcReqUserLoginSCField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///密码
  Password : TThostFtdcPasswordType;
  ///用户端产品信息
  UserProductInfo : TThostFtdcProductInfoType;
  ///接口端产品信息
  InterfaceProductInfo : TThostFtdcProductInfoType;
  ///协议信息
  ProtocolInfo : TThostFtdcProtocolInfoType;
  ///Mac地址
  MacAddress : TThostFtdcMacAddressType;
  ///动态密码
  OneTimePassword : TThostFtdcPasswordType;
  ///终端IP地址
  ClientIPAddress : TThostFtdcIPAddressType;
  ///登录备注
  LoginRemark : TThostFtdcLoginRemarkType;
  ///终端IP端口
  ClientIPPort : TThostFtdcIPPortType;
  ///认证码
  AuthCode : TThostFtdcAuthCodeType;
  ///App代码
  AppID : TThostFtdcAppIDType;
end;
pCThostFtdcReqUserLoginSCField = ^CThostFtdcReqUserLoginSCField;

///投资者风险结算持仓查询
CThostFtdcQryRiskSettleInvstPositionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryRiskSettleInvstPositionField = ^CThostFtdcQryRiskSettleInvstPositionField;

///风险结算产品查询
CThostFtdcQryRiskSettleProductStatusField = record
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryRiskSettleProductStatusField = ^CThostFtdcQryRiskSettleProductStatusField;

///投资者风险结算持仓
CThostFtdcRiskSettleInvstPositionField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///持仓多空方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///持仓日期
  PositionDate : TThostFtdcPositionDateType;
  ///上日持仓
  YdPosition : TThostFtdcVolumeType;
  ///今日持仓
  Position : TThostFtdcVolumeType;
  ///多头冻结
  LongFrozen : TThostFtdcVolumeType;
  ///空头冻结
  ShortFrozen : TThostFtdcVolumeType;
  ///开仓冻结金额
  LongFrozenAmount : TThostFtdcMoneyType;
  ///开仓冻结金额
  ShortFrozenAmount : TThostFtdcMoneyType;
  ///开仓量
  OpenVolume : TThostFtdcVolumeType;
  ///平仓量
  CloseVolume : TThostFtdcVolumeType;
  ///开仓金额
  OpenAmount : TThostFtdcMoneyType;
  ///平仓金额
  CloseAmount : TThostFtdcMoneyType;
  ///持仓成本
  PositionCost : TThostFtdcMoneyType;
  ///上次占用的保证金
  PreMargin : TThostFtdcMoneyType;
  ///占用的保证金
  UseMargin : TThostFtdcMoneyType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///持仓盈亏
  PositionProfit : TThostFtdcMoneyType;
  ///上次结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///本次结算价
  SettlementPrice : TThostFtdcPriceType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///开仓成本
  OpenCost : TThostFtdcMoneyType;
  ///交易所保证金
  ExchangeMargin : TThostFtdcMoneyType;
  ///组合成交形成的持仓
  CombPosition : TThostFtdcVolumeType;
  ///组合多头冻结
  CombLongFrozen : TThostFtdcVolumeType;
  ///组合空头冻结
  CombShortFrozen : TThostFtdcVolumeType;
  ///逐日盯市平仓盈亏
  CloseProfitByDate : TThostFtdcMoneyType;
  ///逐笔对冲平仓盈亏
  CloseProfitByTrade : TThostFtdcMoneyType;
  ///今日持仓
  TodayPosition : TThostFtdcVolumeType;
  ///保证金率
  MarginRateByMoney : TThostFtdcRatioType;
  ///保证金率(按手数)
  MarginRateByVolume : TThostFtdcRatioType;
  ///执行冻结
  StrikeFrozen : TThostFtdcVolumeType;
  ///执行冻结金额
  StrikeFrozenAmount : TThostFtdcMoneyType;
  ///放弃执行冻结
  AbandonFrozen : TThostFtdcVolumeType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///执行冻结的昨仓
  YdStrikeFrozen : TThostFtdcVolumeType;
  ///投资单元代码
  InvestUnitID : TThostFtdcInvestUnitIDType;
  ///持仓成本差值
  PositionCostOffset : TThostFtdcMoneyType;
  ///tas持仓手数
  TasPosition : TThostFtdcVolumeType;
  ///tas持仓成本
  TasPositionCost : TThostFtdcMoneyType;
end;
pCThostFtdcRiskSettleInvstPositionField = ^CThostFtdcRiskSettleInvstPositionField;

///风险品种
CThostFtdcRiskSettleProductStatusField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品编号
  ProductID : TThostFtdcInstrumentIDType;
  ///产品结算状态
  ProductStatus : TThostFtdcProductStatusType;
end;
pCThostFtdcRiskSettleProductStatusField = ^CThostFtdcRiskSettleProductStatusField;

///风险结算追平信息
CThostFtdcSyncDeltaInfoField = record
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
  ///追平状态
  SyncDeltaStatus : TThostFtdcSyncDeltaStatusType;
  ///追平描述
  SyncDescription : TThostFtdcSyncDescriptionType;
  ///是否只有资金追平
  IsOnlyTrdDelta : TThostFtdcBoolType;
end;
pCThostFtdcSyncDeltaInfoField = ^CThostFtdcSyncDeltaInfoField;

///风险结算追平产品信息
CThostFtdcSyncDeltaProductStatusField = record
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
  ///是否允许交易
  ProductStatus : TThostFtdcProductStatusType;
end;
pCThostFtdcSyncDeltaProductStatusField = ^CThostFtdcSyncDeltaProductStatusField;

///风险结算追平持仓明细
CThostFtdcSyncDeltaInvstPosDtlField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///买卖
  Direction : TThostFtdcDirectionType;
  ///开仓日期
  OpenDate : TThostFtdcDateType;
  ///成交编号
  TradeID : TThostFtdcTradeIDType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///开仓价
  OpenPrice : TThostFtdcPriceType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///成交类型
  TradeType : TThostFtdcTradeTypeType;
  ///组合合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///逐日盯市平仓盈亏
  CloseProfitByDate : TThostFtdcMoneyType;
  ///逐笔对冲平仓盈亏
  CloseProfitByTrade : TThostFtdcMoneyType;
  ///逐日盯市持仓盈亏
  PositionProfitByDate : TThostFtdcMoneyType;
  ///逐笔对冲持仓盈亏
  PositionProfitByTrade : TThostFtdcMoneyType;
  ///投资者保证金
  Margin : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///保证金率
  MarginRateByMoney : TThostFtdcRatioType;
  ///保证金率(按手数)
  MarginRateByVolume : TThostFtdcRatioType;
  ///昨结算价
  LastSettlementPrice : TThostFtdcPriceType;
  ///结算价
  SettlementPrice : TThostFtdcPriceType;
  ///平仓量
  CloseVolume : TThostFtdcVolumeType;
  ///平仓金额
  CloseAmount : TThostFtdcMoneyType;
  ///先开先平剩余数量
  TimeFirstVolume : TThostFtdcVolumeType;
  ///特殊持仓标志
  SpecPosiType : TThostFtdcSpecPosiTypeType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaInvstPosDtlField = ^CThostFtdcSyncDeltaInvstPosDtlField;

///风险结算追平组合持仓明细
CThostFtdcSyncDeltaInvstPosCombDtlField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///开仓日期
  OpenDate : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///组合编号
  ComTradeID : TThostFtdcTradeIDType;
  ///撮合编号
  TradeID : TThostFtdcTradeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///买卖
  Direction : TThostFtdcDirectionType;
  ///持仓量
  TotalAmt : TThostFtdcVolumeType;
  ///投资者保证金
  Margin : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///保证金率
  MarginRateByMoney : TThostFtdcRatioType;
  ///保证金率(按手数)
  MarginRateByVolume : TThostFtdcRatioType;
  ///单腿编号
  LegID : TThostFtdcLegIDType;
  ///单腿乘数
  LegMultiple : TThostFtdcLegMultipleType;
  ///成交组号
  TradeGroupID : TThostFtdcTradeGroupIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaInvstPosCombDtlField = ^CThostFtdcSyncDeltaInvstPosCombDtlField;

///风险结算追平资金
CThostFtdcSyncDeltaTradingAccountField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///上次质押金额
  PreMortgage : TThostFtdcMoneyType;
  ///上次信用额度
  PreCredit : TThostFtdcMoneyType;
  ///上次存款额
  PreDeposit : TThostFtdcMoneyType;
  ///上次结算准备金
  PreBalance : TThostFtdcMoneyType;
  ///上次占用的保证金
  PreMargin : TThostFtdcMoneyType;
  ///利息基数
  InterestBase : TThostFtdcMoneyType;
  ///利息收入
  Interest : TThostFtdcMoneyType;
  ///入金金额
  Deposit : TThostFtdcMoneyType;
  ///出金金额
  Withdraw : TThostFtdcMoneyType;
  ///冻结的保证金
  FrozenMargin : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///当前保证金总额
  CurrMargin : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///平仓盈亏
  CloseProfit : TThostFtdcMoneyType;
  ///持仓盈亏
  PositionProfit : TThostFtdcMoneyType;
  ///期货结算准备金
  Balance : TThostFtdcMoneyType;
  ///可用资金
  Available : TThostFtdcMoneyType;
  ///可取资金
  WithdrawQuota : TThostFtdcMoneyType;
  ///基本准备金
  Reserve : TThostFtdcMoneyType;
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///结算编号
  SettlementID : TThostFtdcSettlementIDType;
  ///信用额度
  Credit : TThostFtdcMoneyType;
  ///质押金额
  Mortgage : TThostFtdcMoneyType;
  ///交易所保证金
  ExchangeMargin : TThostFtdcMoneyType;
  ///投资者交割保证金
  DeliveryMargin : TThostFtdcMoneyType;
  ///交易所交割保证金
  ExchangeDeliveryMargin : TThostFtdcMoneyType;
  ///保底期货结算准备金
  ReserveBalance : TThostFtdcMoneyType;
  ///币种代码
  CurrencyID : TThostFtdcCurrencyIDType;
  ///上次货币质入金额
  PreFundMortgageIn : TThostFtdcMoneyType;
  ///上次货币质出金额
  PreFundMortgageOut : TThostFtdcMoneyType;
  ///货币质入金额
  FundMortgageIn : TThostFtdcMoneyType;
  ///货币质出金额
  FundMortgageOut : TThostFtdcMoneyType;
  ///货币质押余额
  FundMortgageAvailable : TThostFtdcMoneyType;
  ///可质押货币金额
  MortgageableFund : TThostFtdcMoneyType;
  ///特殊产品占用保证金
  SpecProductMargin : TThostFtdcMoneyType;
  ///特殊产品冻结保证金
  SpecProductFrozenMargin : TThostFtdcMoneyType;
  ///特殊产品手续费
  SpecProductCommission : TThostFtdcMoneyType;
  ///特殊产品冻结手续费
  SpecProductFrozenCommission : TThostFtdcMoneyType;
  ///特殊产品持仓盈亏
  SpecProductPositionProfit : TThostFtdcMoneyType;
  ///特殊产品平仓盈亏
  SpecProductCloseProfit : TThostFtdcMoneyType;
  ///根据持仓盈亏算法计算的特殊产品持仓盈亏
  SpecProductPositionProfitByAlg : TThostFtdcMoneyType;
  ///特殊产品交易所保证金
  SpecProductExchangeMargin : TThostFtdcMoneyType;
  ///延时换汇冻结金额
  FrozenSwap : TThostFtdcMoneyType;
  ///剩余换汇额度
  RemainSwap : TThostFtdcMoneyType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaTradingAccountField = ^CThostFtdcSyncDeltaTradingAccountField;

///投资者风险结算总保证金
CThostFtdcSyncDeltaInitInvstMarginField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///追平前总风险保证金
  LastRiskTotalInvstMargin : TThostFtdcMoneyType;
  ///追平前交易所总风险保证金
  LastRiskTotalExchMargin : TThostFtdcMoneyType;
  ///本次追平品种总保证金
  ThisSyncInvstMargin : TThostFtdcMoneyType;
  ///本次追平品种交易所总保证金
  ThisSyncExchMargin : TThostFtdcMoneyType;
  ///本次未追平品种总保证金
  RemainRiskInvstMargin : TThostFtdcMoneyType;
  ///本次未追平品种交易所总保证金
  RemainRiskExchMargin : TThostFtdcMoneyType;
  ///追平前总特殊产品风险保证金
  LastRiskSpecTotalInvstMargin : TThostFtdcMoneyType;
  ///追平前总特殊产品交易所风险保证金
  LastRiskSpecTotalExchMargin : TThostFtdcMoneyType;
  ///本次追平品种特殊产品总保证金
  ThisSyncSpecInvstMargin : TThostFtdcMoneyType;
  ///本次追平品种特殊产品交易所总保证金
  ThisSyncSpecExchMargin : TThostFtdcMoneyType;
  ///本次未追平品种特殊产品总保证金
  RemainRiskSpecInvstMargin : TThostFtdcMoneyType;
  ///本次未追平品种特殊产品交易所总保证金
  RemainRiskSpecExchMargin : TThostFtdcMoneyType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaInitInvstMarginField = ^CThostFtdcSyncDeltaInitInvstMarginField;

///风险结算追平组合优先级
CThostFtdcSyncDeltaDceCombInstrumentField = record
  ///合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///成交组号
  TradeGroupID : TThostFtdcTradeGroupIDType;
  ///投机套保标志
  CombHedgeFlag : TThostFtdcHedgeFlagType;
  ///组合类型
  CombinationType : TThostFtdcDceCombinationTypeType;
  ///买卖
  Direction : TThostFtdcDirectionType;
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
  ///期权组合保证金比例
  Xparameter : TThostFtdcDiscountRatioType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaDceCombInstrumentField = ^CThostFtdcSyncDeltaDceCombInstrumentField;

///风险结算追平投资者期货保证金率
CThostFtdcSyncDeltaInvstMarginRateField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///是否相对交易所收取
  IsRelative : TThostFtdcBoolType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaInvstMarginRateField = ^CThostFtdcSyncDeltaInvstMarginRateField;

///风险结算追平交易所期货保证金率
CThostFtdcSyncDeltaExchMarginRateField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaExchMarginRateField = ^CThostFtdcSyncDeltaExchMarginRateField;

///风险结算追平中金现货期权交易所保证金率
CThostFtdcSyncDeltaOptExchMarginField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投机空头保证金调整系数
  SShortMarginRatioByMoney : TThostFtdcRatioType;
  ///投机空头保证金调整系数
  SShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///保值空头保证金调整系数
  HShortMarginRatioByMoney : TThostFtdcRatioType;
  ///保值空头保证金调整系数
  HShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///套利空头保证金调整系数
  AShortMarginRatioByMoney : TThostFtdcRatioType;
  ///套利空头保证金调整系数
  AShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///做市商空头保证金调整系数
  MShortMarginRatioByMoney : TThostFtdcRatioType;
  ///做市商空头保证金调整系数
  MShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaOptExchMarginField = ^CThostFtdcSyncDeltaOptExchMarginField;

///风险结算追平中金现货期权投资者保证金率
CThostFtdcSyncDeltaOptInvstMarginField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机空头保证金调整系数
  SShortMarginRatioByMoney : TThostFtdcRatioType;
  ///投机空头保证金调整系数
  SShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///保值空头保证金调整系数
  HShortMarginRatioByMoney : TThostFtdcRatioType;
  ///保值空头保证金调整系数
  HShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///套利空头保证金调整系数
  AShortMarginRatioByMoney : TThostFtdcRatioType;
  ///套利空头保证金调整系数
  AShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///是否跟随交易所收取
  IsRelative : TThostFtdcBoolType;
  ///做市商空头保证金调整系数
  MShortMarginRatioByMoney : TThostFtdcRatioType;
  ///做市商空头保证金调整系数
  MShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaOptInvstMarginField = ^CThostFtdcSyncDeltaOptInvstMarginField;

///风险结算追平期权标的调整保证金率
CThostFtdcSyncDeltaInvstMarginRateULField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///多头保证金率
  LongMarginRatioByMoney : TThostFtdcRatioType;
  ///多头保证金费
  LongMarginRatioByVolume : TThostFtdcMoneyType;
  ///空头保证金率
  ShortMarginRatioByMoney : TThostFtdcRatioType;
  ///空头保证金费
  ShortMarginRatioByVolume : TThostFtdcMoneyType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaInvstMarginRateULField = ^CThostFtdcSyncDeltaInvstMarginRateULField;

///风险结算追平期权手续费率
CThostFtdcSyncDeltaOptInvstCommRateField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///开仓手续费率
  OpenRatioByMoney : TThostFtdcRatioType;
  ///开仓手续费
  OpenRatioByVolume : TThostFtdcRatioType;
  ///平仓手续费率
  CloseRatioByMoney : TThostFtdcRatioType;
  ///平仓手续费
  CloseRatioByVolume : TThostFtdcRatioType;
  ///平今手续费率
  CloseTodayRatioByMoney : TThostFtdcRatioType;
  ///平今手续费
  CloseTodayRatioByVolume : TThostFtdcRatioType;
  ///执行手续费率
  StrikeRatioByMoney : TThostFtdcRatioType;
  ///执行手续费
  StrikeRatioByVolume : TThostFtdcRatioType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaOptInvstCommRateField = ^CThostFtdcSyncDeltaOptInvstCommRateField;

///风险结算追平期货手续费率
CThostFtdcSyncDeltaInvstCommRateField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///开仓手续费率
  OpenRatioByMoney : TThostFtdcRatioType;
  ///开仓手续费
  OpenRatioByVolume : TThostFtdcRatioType;
  ///平仓手续费率
  CloseRatioByMoney : TThostFtdcRatioType;
  ///平仓手续费
  CloseRatioByVolume : TThostFtdcRatioType;
  ///平今手续费率
  CloseTodayRatioByMoney : TThostFtdcRatioType;
  ///平今手续费
  CloseTodayRatioByVolume : TThostFtdcRatioType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaInvstCommRateField = ^CThostFtdcSyncDeltaInvstCommRateField;

///风险结算追平交叉汇率
CThostFtdcSyncDeltaProductExchRateField = record
  ///产品代码
  ProductID : TThostFtdcInstrumentIDType;
  ///报价币种类型
  QuoteCurrencyID : TThostFtdcCurrencyIDType;
  ///汇率
  ExchangeRate : TThostFtdcExchangeRateType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaProductExchRateField = ^CThostFtdcSyncDeltaProductExchRateField;

///风险结算追平行情
CThostFtdcSyncDeltaDepthMarketDataField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约在交易所的代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///最新价
  LastPrice : TThostFtdcPriceType;
  ///上次结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///昨收盘
  PreClosePrice : TThostFtdcPriceType;
  ///昨持仓量
  PreOpenInterest : TThostFtdcLargeVolumeType;
  ///今开盘
  OpenPrice : TThostFtdcPriceType;
  ///最高价
  HighestPrice : TThostFtdcPriceType;
  ///最低价
  LowestPrice : TThostFtdcPriceType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///成交金额
  Turnover : TThostFtdcMoneyType;
  ///持仓量
  OpenInterest : TThostFtdcLargeVolumeType;
  ///今收盘
  ClosePrice : TThostFtdcPriceType;
  ///本次结算价
  SettlementPrice : TThostFtdcPriceType;
  ///涨停板价
  UpperLimitPrice : TThostFtdcPriceType;
  ///跌停板价
  LowerLimitPrice : TThostFtdcPriceType;
  ///昨虚实度
  PreDelta : TThostFtdcRatioType;
  ///今虚实度
  CurrDelta : TThostFtdcRatioType;
  ///最后修改时间
  UpdateTime : TThostFtdcTimeType;
  ///最后修改毫秒
  UpdateMillisec : TThostFtdcMillisecType;
  ///申买价一
  BidPrice1 : TThostFtdcPriceType;
  ///申买量一
  BidVolume1 : TThostFtdcVolumeType;
  ///申卖价一
  AskPrice1 : TThostFtdcPriceType;
  ///申卖量一
  AskVolume1 : TThostFtdcVolumeType;
  ///申买价二
  BidPrice2 : TThostFtdcPriceType;
  ///申买量二
  BidVolume2 : TThostFtdcVolumeType;
  ///申卖价二
  AskPrice2 : TThostFtdcPriceType;
  ///申卖量二
  AskVolume2 : TThostFtdcVolumeType;
  ///申买价三
  BidPrice3 : TThostFtdcPriceType;
  ///申买量三
  BidVolume3 : TThostFtdcVolumeType;
  ///申卖价三
  AskPrice3 : TThostFtdcPriceType;
  ///申卖量三
  AskVolume3 : TThostFtdcVolumeType;
  ///申买价四
  BidPrice4 : TThostFtdcPriceType;
  ///申买量四
  BidVolume4 : TThostFtdcVolumeType;
  ///申卖价四
  AskPrice4 : TThostFtdcPriceType;
  ///申卖量四
  AskVolume4 : TThostFtdcVolumeType;
  ///申买价五
  BidPrice5 : TThostFtdcPriceType;
  ///申买量五
  BidVolume5 : TThostFtdcVolumeType;
  ///申卖价五
  AskPrice5 : TThostFtdcPriceType;
  ///申卖量五
  AskVolume5 : TThostFtdcVolumeType;
  ///当日均价
  AveragePrice : TThostFtdcPriceType;
  ///业务日期
  ActionDay : TThostFtdcDateType;
  ///上带价
  BandingUpperPrice : TThostFtdcPriceType;
  ///下带价
  BandingLowerPrice : TThostFtdcPriceType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaDepthMarketDataField = ^CThostFtdcSyncDeltaDepthMarketDataField;

///风险结算追平现货指数
CThostFtdcSyncDeltaIndexPriceField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///指数现货收盘价
  ClosePrice : TThostFtdcPriceType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaIndexPriceField = ^CThostFtdcSyncDeltaIndexPriceField;

///风险结算追平仓单折抵
CThostFtdcSyncDeltaEWarrantOffsetField = record
  ///交易日期
  TradingDay : TThostFtdcTradeDateType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///投机套保标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///数量
  Volume : TThostFtdcVolumeType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaEWarrantOffsetField = ^CThostFtdcSyncDeltaEWarrantOffsetField;

///SPBM期货合约保证金参数
CThostFtdcSPBMFutureParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///期货合约因子
  Cvf : TThostFtdcVolumeMultipleType;
  ///阶段标识
  TimeRange : TThostFtdcTimeRangeType;
  ///品种保证金标准
  MarginRate : TThostFtdcRatioType;
  ///期货合约内部对锁仓费率折扣比例
  LockRateX : TThostFtdcRatioType;
  ///提高保证金标准
  AddOnRate : TThostFtdcRatioType;
  ///昨结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///期货合约内部对锁仓附加费率折扣比例
  AddOnLockRateX2 : TThostFtdcRatioType;
end;
pCThostFtdcSPBMFutureParameterField = ^CThostFtdcSPBMFutureParameterField;

///SPBM期权合约保证金参数
CThostFtdcSPBMOptionParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///期权合约因子
  Cvf : TThostFtdcVolumeMultipleType;
  ///期权冲抵价格
  DownPrice : TThostFtdcPriceType;
  ///Delta值
  Delta : TThostFtdcDeltaType;
  ///卖方期权风险转换最低值
  SlimiDelta : TThostFtdcDeltaType;
  ///昨结算价
  PreSettlementPrice : TThostFtdcPriceType;
end;
pCThostFtdcSPBMOptionParameterField = ^CThostFtdcSPBMOptionParameterField;

///SPBM品种内对锁仓折扣参数
CThostFtdcSPBMIntraParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///品种内合约间对锁仓费率折扣比例
  IntraRateY : TThostFtdcRatioType;
  ///品种内合约间对锁仓附加费率折扣比例
  AddOnIntraRateY2 : TThostFtdcRatioType;
end;
pCThostFtdcSPBMIntraParameterField = ^CThostFtdcSPBMIntraParameterField;

///SPBM跨品种抵扣参数
CThostFtdcSPBMInterParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///优先级
  SpreadId : TThostFtdcSpreadIdType;
  ///品种间对锁仓费率折扣比例
  InterRateZ : TThostFtdcRatioType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcSPBMInterParameterField = ^CThostFtdcSPBMInterParameterField;

///同步SPBM参数结束
CThostFtdcSyncSPBMParameterEndField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
end;
pCThostFtdcSyncSPBMParameterEndField = ^CThostFtdcSyncSPBMParameterEndField;

///SPBM期货合约保证金参数查询
CThostFtdcQrySPBMFutureParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQrySPBMFutureParameterField = ^CThostFtdcQrySPBMFutureParameterField;

///SPBM期权合约保证金参数查询
CThostFtdcQrySPBMOptionParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQrySPBMOptionParameterField = ^CThostFtdcQrySPBMOptionParameterField;

///SPBM品种内对锁仓折扣参数查询
CThostFtdcQrySPBMIntraParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQrySPBMIntraParameterField = ^CThostFtdcQrySPBMIntraParameterField;

///SPBM跨品种抵扣参数查询
CThostFtdcQrySPBMInterParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQrySPBMInterParameterField = ^CThostFtdcQrySPBMInterParameterField;

///组合保证金套餐
CThostFtdcSPBMPortfDefinitionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///组合保证金套餐代码
  PortfolioDefID : TThostFtdcPortfolioDefIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///是否启用SPBM
  IsSPBM : TThostFtdcBoolType;
end;
pCThostFtdcSPBMPortfDefinitionField = ^CThostFtdcSPBMPortfDefinitionField;

///投资者套餐选择
CThostFtdcSPBMInvestorPortfDefField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///组合保证金套餐代码
  PortfolioDefID : TThostFtdcPortfolioDefIDType;
end;
pCThostFtdcSPBMInvestorPortfDefField = ^CThostFtdcSPBMInvestorPortfDefField;

///投资者新型组合保证金系数
CThostFtdcInvestorPortfMarginRatioField = record
  ///投资者范围
  InvestorRange : TThostFtdcInvestorRangeType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///会员对投资者收取的保证金和交易所对投资者收取的保证金的比例
  MarginRatio : TThostFtdcRatioType;
end;
pCThostFtdcInvestorPortfMarginRatioField = ^CThostFtdcInvestorPortfMarginRatioField;

///组合保证金套餐查询
CThostFtdcQrySPBMPortfDefinitionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///组合保证金套餐代码
  PortfolioDefID : TThostFtdcPortfolioDefIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQrySPBMPortfDefinitionField = ^CThostFtdcQrySPBMPortfDefinitionField;

///投资者套餐选择查询
CThostFtdcQrySPBMInvestorPortfDefField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
end;
pCThostFtdcQrySPBMInvestorPortfDefField = ^CThostFtdcQrySPBMInvestorPortfDefField;

///投资者新型组合保证金系数查询
CThostFtdcQryInvestorPortfMarginRatioField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
end;
pCThostFtdcQryInvestorPortfMarginRatioField = ^CThostFtdcQryInvestorPortfMarginRatioField;

///投资者产品SPBM明细
CThostFtdcInvestorProdSPBMDetailField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///合约内对锁保证金
  IntraInstrMargin : TThostFtdcMoneyType;
  ///买归集保证金
  BCollectingMargin : TThostFtdcMoneyType;
  ///卖归集保证金
  SCollectingMargin : TThostFtdcMoneyType;
  ///品种内合约间对锁保证金
  IntraProdMargin : TThostFtdcMoneyType;
  ///净保证金
  NetMargin : TThostFtdcMoneyType;
  ///产品间对锁保证金
  InterProdMargin : TThostFtdcMoneyType;
  ///裸保证金
  SingleMargin : TThostFtdcMoneyType;
  ///附加保证金
  AddOnMargin : TThostFtdcMoneyType;
  ///交割月保证金
  DeliveryMargin : TThostFtdcMoneyType;
  ///看涨期权最低风险
  CallOptionMinRisk : TThostFtdcMoneyType;
  ///看跌期权最低风险
  PutOptionMinRisk : TThostFtdcMoneyType;
  ///卖方期权最低风险
  OptionMinRisk : TThostFtdcMoneyType;
  ///买方期权冲抵价值
  OptionValueOffset : TThostFtdcMoneyType;
  ///卖方期权权利金
  OptionRoyalty : TThostFtdcMoneyType;
  ///价值冲抵
  RealOptionValueOffset : TThostFtdcMoneyType;
  ///保证金
  Margin : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
end;
pCThostFtdcInvestorProdSPBMDetailField = ^CThostFtdcInvestorProdSPBMDetailField;

///投资者产品SPBM明细查询
CThostFtdcQryInvestorProdSPBMDetailField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryInvestorProdSPBMDetailField = ^CThostFtdcQryInvestorProdSPBMDetailField;

///组保交易参数设置
CThostFtdcPortfTradeParamSettingField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///新型组保算法
  Portfolio : TThostFtdcPortfolioType;
  ///撤单是否验资
  IsActionVerify : TThostFtdcBoolType;
  ///平仓是否验资
  IsCloseVerify : TThostFtdcBoolType;
end;
pCThostFtdcPortfTradeParamSettingField = ^CThostFtdcPortfTradeParamSettingField;

///投资者交易权限设置
CThostFtdcInvestorTradingRightField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///交易权限
  InvstTradingRight : TThostFtdcInvstTradingRightType;
end;
pCThostFtdcInvestorTradingRightField = ^CThostFtdcInvestorTradingRightField;

///质押配比参数
CThostFtdcMortgageParamField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///质押配比系数
  MortgageBalance : TThostFtdcRatioType;
  ///开仓是否验证质押配比
  CheckMortgageRatio : TThostFtdcBoolType;
end;
pCThostFtdcMortgageParamField = ^CThostFtdcMortgageParamField;

///可提控制参数
CThostFtdcWithDrawParamField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者帐号
  AccountID : TThostFtdcAccountIDType;
  ///参数代码
  WithDrawParamID : TThostFtdcWithDrawParamIDType;
  ///参数代码值
  WithDrawParamValue : TThostFtdcWithDrawParamValueType;
end;
pCThostFtdcWithDrawParamField = ^CThostFtdcWithDrawParamField;

///Thost终端用户功能权限
CThostFtdcThostUserFunctionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
  ///Thost终端功能代码
  ThostFunctionCode : TThostFtdcThostFunctionCodeType;
end;
pCThostFtdcThostUserFunctionField = ^CThostFtdcThostUserFunctionField;

///Thost终端用户功能权限查询
CThostFtdcQryThostUserFunctionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///用户代码
  UserID : TThostFtdcUserIDType;
end;
pCThostFtdcQryThostUserFunctionField = ^CThostFtdcQryThostUserFunctionField;

///SPBM附加跨品种抵扣参数
CThostFtdcSPBMAddOnInterParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///优先级
  SpreadId : TThostFtdcSpreadIdType;
  ///品种间对锁仓附加费率折扣比例
  AddOnInterRateZ2 : TThostFtdcRatioType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcSPBMAddOnInterParameterField = ^CThostFtdcSPBMAddOnInterParameterField;

///SPBM附加跨品种抵扣参数查询
CThostFtdcQrySPBMAddOnInterParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQrySPBMAddOnInterParameterField = ^CThostFtdcQrySPBMAddOnInterParameterField;

///投资者商品组SPMM记录查询
CThostFtdcQryInvestorCommoditySPMMMarginField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///商品组代码
  CommodityID : TThostFtdcSPMMProductIDType;
end;
pCThostFtdcQryInvestorCommoditySPMMMarginField = ^CThostFtdcQryInvestorCommoditySPMMMarginField;

///投资者商品群SPMM记录查询
CThostFtdcQryInvestorCommodityGroupSPMMMarginField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///商品群代码
  CommodityGroupID : TThostFtdcSPMMProductIDType;
end;
pCThostFtdcQryInvestorCommodityGroupSPMMMarginField = ^CThostFtdcQryInvestorCommodityGroupSPMMMarginField;

///SPMM合约参数查询
CThostFtdcQrySPMMInstParamField = record
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQrySPMMInstParamField = ^CThostFtdcQrySPMMInstParamField;

///SPMM产品参数查询
CThostFtdcQrySPMMProductParamField = record
  ///产品代码
  ProductID : TThostFtdcSPMMProductIDType;
end;
pCThostFtdcQrySPMMProductParamField = ^CThostFtdcQrySPMMProductParamField;

///投资者商品组SPMM记录
CThostFtdcInvestorCommoditySPMMMarginField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///商品组代码
  CommodityID : TThostFtdcSPMMProductIDType;
  ///优惠仓位应收保证金
  MarginBeforeDiscount : TThostFtdcMoneyType;
  ///不优惠仓位应收保证金
  MarginNoDiscount : TThostFtdcMoneyType;
  ///多头实仓风险
  LongPosRisk : TThostFtdcMoneyType;
  ///多头开仓冻结风险
  LongOpenFrozenRisk : TThostFtdcMoneyType;
  ///多头被平冻结风险
  LongCloseFrozenRisk : TThostFtdcMoneyType;
  ///空头实仓风险
  ShortPosRisk : TThostFtdcMoneyType;
  ///空头开仓冻结风险
  ShortOpenFrozenRisk : TThostFtdcMoneyType;
  ///空头被平冻结风险
  ShortCloseFrozenRisk : TThostFtdcMoneyType;
  ///SPMM品种内跨期优惠系数
  IntraCommodityRate : TThostFtdcSPMMDiscountRatioType;
  ///SPMM期权优惠系数
  OptionDiscountRate : TThostFtdcSPMMDiscountRatioType;
  ///实仓对冲优惠金额
  PosDiscount : TThostFtdcMoneyType;
  ///开仓报单对冲优惠金额
  OpenFrozenDiscount : TThostFtdcMoneyType;
  ///品种风险净头
  NetRisk : TThostFtdcMoneyType;
  ///平仓冻结保证金
  CloseFrozenMargin : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///行权冻结资金
  StrikeFrozenMargin : TThostFtdcMoneyType;
end;
pCThostFtdcInvestorCommoditySPMMMarginField = ^CThostFtdcInvestorCommoditySPMMMarginField;

///投资者商品群SPMM记录
CThostFtdcInvestorCommodityGroupSPMMMarginField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///商品群代码
  CommodityGroupID : TThostFtdcSPMMProductIDType;
  ///优惠仓位应收保证金
  MarginBeforeDiscount : TThostFtdcMoneyType;
  ///不优惠仓位应收保证金
  MarginNoDiscount : TThostFtdcMoneyType;
  ///多头风险
  LongRisk : TThostFtdcMoneyType;
  ///空头风险
  ShortRisk : TThostFtdcMoneyType;
  ///商品群平仓冻结保证金
  CloseFrozenMargin : TThostFtdcMoneyType;
  ///SPMM跨品种优惠系数
  InterCommodityRate : TThostFtdcSPMMDiscountRatioType;
  ///商品群最小保证金比例
  MiniMarginRatio : TThostFtdcSPMMDiscountRatioType;
  ///投资者保证金和交易所保证金的比例
  AdjustRatio : TThostFtdcRatioType;
  ///SPMM品种内优惠汇总
  IntraCommodityDiscount : TThostFtdcMoneyType;
  ///SPMM跨品种优惠
  InterCommodityDiscount : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///投资者保证金
  InvestorMargin : TThostFtdcMoneyType;
  ///冻结的手续费
  FrozenCommission : TThostFtdcMoneyType;
  ///手续费
  Commission : TThostFtdcMoneyType;
  ///冻结的资金
  FrozenCash : TThostFtdcMoneyType;
  ///资金差额
  CashIn : TThostFtdcMoneyType;
  ///行权冻结资金
  StrikeFrozenMargin : TThostFtdcMoneyType;
end;
pCThostFtdcInvestorCommodityGroupSPMMMarginField = ^CThostFtdcInvestorCommodityGroupSPMMMarginField;

///SPMM合约参数
CThostFtdcSPMMInstParamField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///SPMM合约保证金算法
  InstMarginCalID : TThostFtdcInstMarginCalIDType;
  ///商品组代码
  CommodityID : TThostFtdcSPMMProductIDType;
  ///商品群代码
  CommodityGroupID : TThostFtdcSPMMProductIDType;
end;
pCThostFtdcSPMMInstParamField = ^CThostFtdcSPMMInstParamField;

///SPMM产品参数
CThostFtdcSPMMProductParamField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcSPMMProductIDType;
  ///商品组代码
  CommodityID : TThostFtdcSPMMProductIDType;
  ///商品群代码
  CommodityGroupID : TThostFtdcSPMMProductIDType;
end;
pCThostFtdcSPMMProductParamField = ^CThostFtdcSPMMProductParamField;

///席位与交易中心对应关系维护查询
CThostFtdcQryTraderAssignField = record
  ///交易员代码
  TraderID : TThostFtdcTraderIDType;
end;
pCThostFtdcQryTraderAssignField = ^CThostFtdcQryTraderAssignField;

///席位与交易中心对应关系
CThostFtdcTraderAssignField = record
  ///应用单元代码
  BrokerID : TThostFtdcBrokerIDType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///交易所交易员代码
  TraderID : TThostFtdcTraderIDType;
  ///会员代码
  ParticipantID : TThostFtdcParticipantIDType;
  ///交易中心代码
  DRIdentityID : TThostFtdcDRIdentityIDType;
end;
pCThostFtdcTraderAssignField = ^CThostFtdcTraderAssignField;

///投资者申报费阶梯收取设置
CThostFtdcInvestorInfoCntSettingField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///商品代码
  ProductID : TThostFtdcProductIDType;
  ///是否收取申报费
  IsCalInfoComm : TThostFtdcBoolType;
  ///是否限制信息量
  IsLimitInfoMax : TThostFtdcBoolType;
  ///信息量限制笔数
  InfoMaxLimit : TThostFtdcVolumeType;
end;
pCThostFtdcInvestorInfoCntSettingField = ^CThostFtdcInvestorInfoCntSettingField;

///RCAMS产品组合信息
CThostFtdcRCAMSCombProductInfoField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcProductIDType;
  ///商品组代码
  CombProductID : TThostFtdcProductIDType;
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
end;
pCThostFtdcRCAMSCombProductInfoField = ^CThostFtdcRCAMSCombProductInfoField;

///RCAMS同合约风险对冲参数
CThostFtdcRCAMSInstrParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcProductIDType;
  ///同合约风险对冲比率
  HedgeRate : TThostFtdcHedgeRateType;
end;
pCThostFtdcRCAMSInstrParameterField = ^CThostFtdcRCAMSInstrParameterField;

///RCAMS品种内风险对冲参数
CThostFtdcRCAMSIntraParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
  ///品种内对冲比率
  HedgeRate : TThostFtdcHedgeRateType;
end;
pCThostFtdcRCAMSIntraParameterField = ^CThostFtdcRCAMSIntraParameterField;

///RCAMS跨品种风险折抵参数
CThostFtdcRCAMSInterParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
  ///优先级
  Priority : TThostFtdcRCAMSPriorityType;
  ///折抵率
  CreditRate : TThostFtdcHedgeRateType;
  ///产品组合代码1
  CombProduct1 : TThostFtdcProductIDType;
  ///产品组合代码2
  CombProduct2 : TThostFtdcProductIDType;
end;
pCThostFtdcRCAMSInterParameterField = ^CThostFtdcRCAMSInterParameterField;

///RCAMS空头期权风险调整参数
CThostFtdcRCAMSShortOptAdjustParamField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
  ///投套标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///空头期权风险调整标准
  AdjustValue : TThostFtdcAdjustValueType;
end;
pCThostFtdcRCAMSShortOptAdjustParamField = ^CThostFtdcRCAMSShortOptAdjustParamField;

///RCAMS策略组合持仓
CThostFtdcRCAMSInvestorCombPositionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投套标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///持仓多空方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///组合合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
  ///单腿编号
  LegID : TThostFtdcLegIDType;
  ///交易所组合合约代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///持仓量
  TotalAmt : TThostFtdcVolumeType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///投资者保证金
  Margin : TThostFtdcMoneyType;
end;
pCThostFtdcRCAMSInvestorCombPositionField = ^CThostFtdcRCAMSInvestorCombPositionField;

///投资者品种RCAMS保证金
CThostFtdcInvestorProdRCAMSMarginField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
  ///投套标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
  ///品种组合前风险
  RiskBeforeDiscount : TThostFtdcMoneyType;
  ///同合约对冲风险
  IntraInstrRisk : TThostFtdcMoneyType;
  ///品种买持仓风险
  BPosRisk : TThostFtdcMoneyType;
  ///品种卖持仓风险
  SPosRisk : TThostFtdcMoneyType;
  ///品种内对冲风险
  IntraProdRisk : TThostFtdcMoneyType;
  ///品种净持仓风险
  NetRisk : TThostFtdcMoneyType;
  ///品种间对冲风险
  InterProdRisk : TThostFtdcMoneyType;
  ///空头期权风险调整
  ShortOptRiskAdj : TThostFtdcMoneyType;
  ///空头期权权利金
  OptionRoyalty : TThostFtdcMoneyType;
  ///大边组合平仓冻结保证金
  MMSACloseFrozenMargin : TThostFtdcMoneyType;
  ///平策略组合冻结保证金
  CloseCombFrozenMargin : TThostFtdcMoneyType;
  ///平仓冻结保证金
  CloseFrozenMargin : TThostFtdcMoneyType;
  ///大边组合开仓冻结保证金
  MMSAOpenFrozenMargin : TThostFtdcMoneyType;
  ///交割月期货开仓冻结保证金
  DeliveryOpenFrozenMargin : TThostFtdcMoneyType;
  ///开仓冻结保证金
  OpenFrozenMargin : TThostFtdcMoneyType;
  ///投资者冻结保证金
  UseFrozenMargin : TThostFtdcMoneyType;
  ///大边组合交易所持仓保证金
  MMSAExchMargin : TThostFtdcMoneyType;
  ///交割月期货交易所持仓保证金
  DeliveryExchMargin : TThostFtdcMoneyType;
  ///策略组合交易所保证金
  CombExchMargin : TThostFtdcMoneyType;
  ///交易所持仓保证金
  ExchMargin : TThostFtdcMoneyType;
  ///投资者持仓保证金
  UseMargin : TThostFtdcMoneyType;
end;
pCThostFtdcInvestorProdRCAMSMarginField = ^CThostFtdcInvestorProdRCAMSMarginField;

///RCAMS产品组合信息查询
CThostFtdcQryRCAMSCombProductInfoField = record
  ///产品代码
  ProductID : TThostFtdcProductIDType;
  ///商品组代码
  CombProductID : TThostFtdcProductIDType;
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
end;
pCThostFtdcQryRCAMSCombProductInfoField = ^CThostFtdcQryRCAMSCombProductInfoField;

///RCAMS同合约风险对冲参数查询
CThostFtdcQryRCAMSInstrParameterField = record
  ///产品代码
  ProductID : TThostFtdcProductIDType;
end;
pCThostFtdcQryRCAMSInstrParameterField = ^CThostFtdcQryRCAMSInstrParameterField;

///RCAMS品种内风险对冲参数查询
CThostFtdcQryRCAMSIntraParameterField = record
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
end;
pCThostFtdcQryRCAMSIntraParameterField = ^CThostFtdcQryRCAMSIntraParameterField;

///RCAMS跨品种风险折抵参数查询
CThostFtdcQryRCAMSInterParameterField = record
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
  ///产品组合代码1
  CombProduct1 : TThostFtdcProductIDType;
  ///产品组合代码2
  CombProduct2 : TThostFtdcProductIDType;
end;
pCThostFtdcQryRCAMSInterParameterField = ^CThostFtdcQryRCAMSInterParameterField;

///RCAMS空头期权风险调整参数查询
CThostFtdcQryRCAMSShortOptAdjustParamField = record
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
end;
pCThostFtdcQryRCAMSShortOptAdjustParamField = ^CThostFtdcQryRCAMSShortOptAdjustParamField;

///RCAMS策略组合持仓查询
CThostFtdcQryRCAMSInvestorCombPositionField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///组合合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryRCAMSInvestorCombPositionField = ^CThostFtdcQryRCAMSInvestorCombPositionField;

///投资者品种RCAMS保证金查询
CThostFtdcQryInvestorProdRCAMSMarginField = record
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
end;
pCThostFtdcQryInvestorProdRCAMSMarginField = ^CThostFtdcQryInvestorProdRCAMSMarginField;

///RULE合约保证金参数
CThostFtdcRULEInstrParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约类型
  InstrumentClass : TThostFtdcInstrumentClassType;
  ///标准合约
  StdInstrumentID : TThostFtdcInstrumentIDType;
  ///投机买折算系数
  BSpecRatio : TThostFtdcRatioType;
  ///投机卖折算系数
  SSpecRatio : TThostFtdcRatioType;
  ///套保买折算系数
  BHedgeRatio : TThostFtdcRatioType;
  ///套保卖折算系数
  SHedgeRatio : TThostFtdcRatioType;
  ///买附加风险保证金
  BAddOnMargin : TThostFtdcMoneyType;
  ///卖附加风险保证金
  SAddOnMargin : TThostFtdcMoneyType;
  ///商品群号
  CommodityGroupID : TThostFtdcCommodityGroupIDType;
end;
pCThostFtdcRULEInstrParameterField = ^CThostFtdcRULEInstrParameterField;

///RULE品种内对锁仓折扣参数
CThostFtdcRULEIntraParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///标准合约
  StdInstrumentID : TThostFtdcInstrumentIDType;
  ///标准合约保证金
  StdInstrMargin : TThostFtdcMoneyType;
  ///一般月份合约组合保证金系数
  UsualIntraRate : TThostFtdcRatioType;
  ///临近交割合约组合保证金系数
  DeliveryIntraRate : TThostFtdcRatioType;
end;
pCThostFtdcRULEIntraParameterField = ^CThostFtdcRULEIntraParameterField;

///RULE跨品种抵扣参数
CThostFtdcRULEInterParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///优先级
  SpreadId : TThostFtdcSpreadIdType;
  ///品种间对锁仓费率折扣比例
  InterRate : TThostFtdcRatioType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///腿1比例系数
  Leg1PropFactor : TThostFtdcCommonIntType;
  ///腿2比例系数
  Leg2PropFactor : TThostFtdcCommonIntType;
  ///商品群号
  CommodityGroupID : TThostFtdcCommodityGroupIDType;
  ///商品群名称
  CommodityGroupName : TThostFtdcInstrumentNameType;
end;
pCThostFtdcRULEInterParameterField = ^CThostFtdcRULEInterParameterField;

///RULE合约保证金参数查询
CThostFtdcQryRULEInstrParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryRULEInstrParameterField = ^CThostFtdcQryRULEInstrParameterField;

///RULE品种内对锁仓折扣参数查询
CThostFtdcQryRULEIntraParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
end;
pCThostFtdcQryRULEIntraParameterField = ^CThostFtdcQryRULEIntraParameterField;

///RULE跨品种抵扣参数查询
CThostFtdcQryRULEInterParameterField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///商品群号
  CommodityGroupID : TThostFtdcCommodityGroupIDType;
end;
pCThostFtdcQryRULEInterParameterField = ^CThostFtdcQryRULEInterParameterField;

///投资者产品RULE保证金
CThostFtdcInvestorProdRULEMarginField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///合约类型
  InstrumentClass : TThostFtdcInstrumentClassType;
  ///商品群号
  CommodityGroupID : TThostFtdcCommodityGroupIDType;
  ///买标准持仓
  BStdPosition : TThostFtdcStdPositionType;
  ///卖标准持仓
  SStdPosition : TThostFtdcStdPositionType;
  ///买标准开仓冻结
  BStdOpenFrozen : TThostFtdcStdPositionType;
  ///卖标准开仓冻结
  SStdOpenFrozen : TThostFtdcStdPositionType;
  ///买标准平仓冻结
  BStdCloseFrozen : TThostFtdcStdPositionType;
  ///卖标准平仓冻结
  SStdCloseFrozen : TThostFtdcStdPositionType;
  ///品种内对冲标准持仓
  IntraProdStdPosition : TThostFtdcStdPositionType;
  ///品种内单腿标准持仓
  NetStdPosition : TThostFtdcStdPositionType;
  ///品种间对冲标准持仓
  InterProdStdPosition : TThostFtdcStdPositionType;
  ///单腿标准持仓
  SingleStdPosition : TThostFtdcStdPositionType;
  ///品种内对锁保证金
  IntraProdMargin : TThostFtdcMoneyType;
  ///品种间对锁保证金
  InterProdMargin : TThostFtdcMoneyType;
  ///跨品种单腿保证金
  SingleMargin : TThostFtdcMoneyType;
  ///非组合合约保证金
  NonCombMargin : TThostFtdcMoneyType;
  ///附加保证金
  AddOnMargin : TThostFtdcMoneyType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///附加冻结保证金
  AddOnFrozenMargin : TThostFtdcMoneyType;
  ///开仓冻结保证金
  OpenFrozenMargin : TThostFtdcMoneyType;
  ///平仓冻结保证金
  CloseFrozenMargin : TThostFtdcMoneyType;
  ///品种保证金
  Margin : TThostFtdcMoneyType;
  ///冻结保证金
  FrozenMargin : TThostFtdcMoneyType;
end;
pCThostFtdcInvestorProdRULEMarginField = ^CThostFtdcInvestorProdRULEMarginField;

///投资者产品RULE保证金查询
CThostFtdcQryInvestorProdRULEMarginField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///商品群号
  CommodityGroupID : TThostFtdcCommodityGroupIDType;
end;
pCThostFtdcQryInvestorProdRULEMarginField = ^CThostFtdcQryInvestorProdRULEMarginField;

///风险结算追平SPBM组合保证金套餐
CThostFtdcSyncDeltaSPBMPortfDefinitionField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///组合保证金套餐代码
  PortfolioDefID : TThostFtdcPortfolioDefIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///是否启用SPBM
  IsSPBM : TThostFtdcBoolType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPBMPortfDefinitionField = ^CThostFtdcSyncDeltaSPBMPortfDefinitionField;

///风险结算追平投资者SPBM套餐选择
CThostFtdcSyncDeltaSPBMInvstPortfDefField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///组合保证金套餐代码
  PortfolioDefID : TThostFtdcPortfolioDefIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPBMInvstPortfDefField = ^CThostFtdcSyncDeltaSPBMInvstPortfDefField;

///风险结算追平SPBM期货合约保证金参数
CThostFtdcSyncDeltaSPBMFutureParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///期货合约因子
  Cvf : TThostFtdcVolumeMultipleType;
  ///阶段标识
  TimeRange : TThostFtdcTimeRangeType;
  ///品种保证金标准
  MarginRate : TThostFtdcRatioType;
  ///期货合约内部对锁仓费率折扣比例
  LockRateX : TThostFtdcRatioType;
  ///提高保证金标准
  AddOnRate : TThostFtdcRatioType;
  ///昨结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///期货合约内部对锁仓附加费率折扣比例
  AddOnLockRateX2 : TThostFtdcRatioType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPBMFutureParameterField = ^CThostFtdcSyncDeltaSPBMFutureParameterField;

///风险结算追平SPBM期权合约保证金参数
CThostFtdcSyncDeltaSPBMOptionParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///期权合约因子
  Cvf : TThostFtdcVolumeMultipleType;
  ///期权冲抵价格
  DownPrice : TThostFtdcPriceType;
  ///Delta值
  Delta : TThostFtdcDeltaType;
  ///卖方期权风险转换最低值
  SlimiDelta : TThostFtdcDeltaType;
  ///昨结算价
  PreSettlementPrice : TThostFtdcPriceType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPBMOptionParameterField = ^CThostFtdcSyncDeltaSPBMOptionParameterField;

///风险结算追平SPBM品种内对锁仓折扣参数
CThostFtdcSyncDeltaSPBMIntraParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///品种内合约间对锁仓费率折扣比例
  IntraRateY : TThostFtdcRatioType;
  ///品种内合约间对锁仓附加费率折扣比例
  AddOnIntraRateY2 : TThostFtdcRatioType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPBMIntraParameterField = ^CThostFtdcSyncDeltaSPBMIntraParameterField;

///风险结算追平SPBM跨品种抵扣参数
CThostFtdcSyncDeltaSPBMInterParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///优先级
  SpreadId : TThostFtdcSpreadIdType;
  ///品种间对锁仓费率折扣比例
  InterRateZ : TThostFtdcRatioType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPBMInterParameterField = ^CThostFtdcSyncDeltaSPBMInterParameterField;

///风险结算追平SPBM附加跨品种抵扣参数
CThostFtdcSyncDeltaSPBMAddOnInterParamField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///优先级
  SpreadId : TThostFtdcSpreadIdType;
  ///品种间对锁仓附加费率折扣比例
  AddOnInterRateZ2 : TThostFtdcRatioType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPBMAddOnInterParamField = ^CThostFtdcSyncDeltaSPBMAddOnInterParamField;

///风险结算追平SPMM合约参数
CThostFtdcSyncDeltaSPMMInstParamField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///SPMM合约保证金算法
  InstMarginCalID : TThostFtdcInstMarginCalIDType;
  ///商品组代码
  CommodityID : TThostFtdcSPMMProductIDType;
  ///商品群代码
  CommodityGroupID : TThostFtdcSPMMProductIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPMMInstParamField = ^CThostFtdcSyncDeltaSPMMInstParamField;

///风险结算追平SPMM产品相关参数
CThostFtdcSyncDeltaSPMMProductParamField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcSPMMProductIDType;
  ///商品组代码
  CommodityID : TThostFtdcSPMMProductIDType;
  ///商品群代码
  CommodityGroupID : TThostFtdcSPMMProductIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPMMProductParamField = ^CThostFtdcSyncDeltaSPMMProductParamField;

///风险结算追平投资者SPMM模板选择
CThostFtdcSyncDeltaInvestorSPMMModelField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///SPMM模板ID
  SPMMModelID : TThostFtdcSPMMModelIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaInvestorSPMMModelField = ^CThostFtdcSyncDeltaInvestorSPMMModelField;

///风险结算追平SPMM模板参数设置
CThostFtdcSyncDeltaSPMMModelParamField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///SPMM模板ID
  SPMMModelID : TThostFtdcSPMMModelIDType;
  ///商品群代码
  CommodityGroupID : TThostFtdcSPMMProductIDType;
  ///SPMM品种内跨期优惠系数
  IntraCommodityRate : TThostFtdcSPMMDiscountRatioType;
  ///SPMM品种间优惠系数
  InterCommodityRate : TThostFtdcSPMMDiscountRatioType;
  ///SPMM期权优惠系数
  OptionDiscountRate : TThostFtdcSPMMDiscountRatioType;
  ///商品群最小保证金比例
  MiniMarginRatio : TThostFtdcSPMMDiscountRatioType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaSPMMModelParamField = ^CThostFtdcSyncDeltaSPMMModelParamField;

///风险结算追平RCAMS产品组合信息
CThostFtdcSyncDeltaRCAMSCombProdInfoField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcProductIDType;
  ///商品组代码
  CombProductID : TThostFtdcProductIDType;
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRCAMSCombProdInfoField = ^CThostFtdcSyncDeltaRCAMSCombProdInfoField;

///风险结算追平RCAMS同合约风险对冲参数
CThostFtdcSyncDeltaRCAMSInstrParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品代码
  ProductID : TThostFtdcProductIDType;
  ///同合约风险对冲比率
  HedgeRate : TThostFtdcHedgeRateType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRCAMSInstrParameterField = ^CThostFtdcSyncDeltaRCAMSInstrParameterField;

///风险结算追平RCAMS品种内风险对冲参数
CThostFtdcSyncDeltaRCAMSIntraParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
  ///品种内对冲比率
  HedgeRate : TThostFtdcHedgeRateType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRCAMSIntraParameterField = ^CThostFtdcSyncDeltaRCAMSIntraParameterField;

///风险结算追平RCAMS跨品种风险折抵参数
CThostFtdcSyncDeltaRCAMSInterParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///商品群代码
  ProductGroupID : TThostFtdcProductIDType;
  ///优先级
  Priority : TThostFtdcRCAMSPriorityType;
  ///折抵率
  CreditRate : TThostFtdcHedgeRateType;
  ///产品组合代码1
  CombProduct1 : TThostFtdcProductIDType;
  ///产品组合代码2
  CombProduct2 : TThostFtdcProductIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRCAMSInterParameterField = ^CThostFtdcSyncDeltaRCAMSInterParameterField;

///风险结算追平RCAMS空头期权风险调整参数
CThostFtdcSyncDeltaRCAMSSOptAdjParamField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///产品组合代码
  CombProductID : TThostFtdcProductIDType;
  ///投套标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///空头期权风险调整标准
  AdjustValue : TThostFtdcAdjustValueType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRCAMSSOptAdjParamField = ^CThostFtdcSyncDeltaRCAMSSOptAdjParamField;

///风险结算追平RCAMS策略组合规则明细
CThostFtdcSyncDeltaRCAMSCombRuleDtlField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///策略产品
  ProdGroup : TThostFtdcProductIDType;
  ///策略id
  RuleId : TThostFtdcRuleIdType;
  ///优先级
  Priority : TThostFtdcRCAMSPriorityType;
  ///投套标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///组合保证金标准
  CombMargin : TThostFtdcMoneyType;
  ///交易所组合合约代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///单腿编号
  LegID : TThostFtdcLegIDType;
  ///单腿合约代码
  LegInstrumentID : TThostFtdcInstrumentIDType;
  ///买卖方向
  Direction : TThostFtdcDirectionType;
  ///单腿乘数
  LegMultiple : TThostFtdcLegMultipleType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRCAMSCombRuleDtlField = ^CThostFtdcSyncDeltaRCAMSCombRuleDtlField;

///风险结算追平RCAMS策略组合持仓
CThostFtdcSyncDeltaRCAMSInvstCombPosField = record
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///经纪公司代码
  BrokerID : TThostFtdcBrokerIDType;
  ///投资者代码
  InvestorID : TThostFtdcInvestorIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///投套标志
  HedgeFlag : TThostFtdcHedgeFlagType;
  ///持仓多空方向
  PosiDirection : TThostFtdcPosiDirectionType;
  ///组合合约代码
  CombInstrumentID : TThostFtdcInstrumentIDType;
  ///单腿编号
  LegID : TThostFtdcLegIDType;
  ///交易所组合合约代码
  ExchangeInstID : TThostFtdcExchangeInstIDType;
  ///持仓量
  TotalAmt : TThostFtdcVolumeType;
  ///交易所保证金
  ExchMargin : TThostFtdcMoneyType;
  ///投资者保证金
  Margin : TThostFtdcMoneyType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRCAMSInvstCombPosField = ^CThostFtdcSyncDeltaRCAMSInvstCombPosField;

///风险结算追平RULE合约保证金参数
CThostFtdcSyncDeltaRULEInstrParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///合约代码
  InstrumentID : TThostFtdcInstrumentIDType;
  ///合约类型
  InstrumentClass : TThostFtdcInstrumentClassType;
  ///标准合约
  StdInstrumentID : TThostFtdcInstrumentIDType;
  ///投机买折算系数
  BSpecRatio : TThostFtdcRatioType;
  ///投机卖折算系数
  SSpecRatio : TThostFtdcRatioType;
  ///套保买折算系数
  BHedgeRatio : TThostFtdcRatioType;
  ///套保卖折算系数
  SHedgeRatio : TThostFtdcRatioType;
  ///买附加风险保证金
  BAddOnMargin : TThostFtdcMoneyType;
  ///卖附加风险保证金
  SAddOnMargin : TThostFtdcMoneyType;
  ///商品群号
  CommodityGroupID : TThostFtdcCommodityGroupIDType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRULEInstrParameterField = ^CThostFtdcSyncDeltaRULEInstrParameterField;

///风险结算追平RULE品种内对锁仓折扣参数
CThostFtdcSyncDeltaRULEIntraParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///品种代码
  ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///标准合约
  StdInstrumentID : TThostFtdcInstrumentIDType;
  ///标准合约保证金
  StdInstrMargin : TThostFtdcMoneyType;
  ///一般月份合约组合保证金系数
  UsualIntraRate : TThostFtdcRatioType;
  ///临近交割合约组合保证金系数
  DeliveryIntraRate : TThostFtdcRatioType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRULEIntraParameterField = ^CThostFtdcSyncDeltaRULEIntraParameterField;

///风险结算追平RULE跨品种抵扣参数
CThostFtdcSyncDeltaRULEInterParameterField = record
  ///交易日
  TradingDay : TThostFtdcDateType;
  ///交易所代码
  ExchangeID : TThostFtdcExchangeIDType;
  ///优先级
  SpreadId : TThostFtdcSpreadIdType;
  ///品种间对锁仓费率折扣比例
  InterRate : TThostFtdcRatioType;
  ///第一腿构成品种
  Leg1ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///第二腿构成品种
  Leg2ProdFamilyCode : TThostFtdcInstrumentIDType;
  ///腿1比例系数
  Leg1PropFactor : TThostFtdcCommonIntType;
  ///腿2比例系数
  Leg2PropFactor : TThostFtdcCommonIntType;
  ///商品群号
  CommodityGroupID : TThostFtdcCommodityGroupIDType;
  ///商品群名称
  CommodityGroupName : TThostFtdcInstrumentNameType;
  ///操作标志
  ActionDirection : TThostFtdcActionDirectionType;
  ///追平序号
  SyncDeltaSequenceNo : TThostFtdcSequenceNoType;
end;
pCThostFtdcSyncDeltaRULEInterParameterField = ^CThostFtdcSyncDeltaRULEInterParameterField;

implementation

end.