package org.toughradius.entity;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

public class Subscribe {
    private Integer id;

    private Integer nodeId;

    private String subscriber;

    private String password;

    private String billType;

    private String domain;

    private String addrPool;

    private String policy;

    private Integer activeNum;

    private BigInteger flowAmount;

    private Boolean bindMac;

    private Boolean bindVlan;

    private String ipAddr;

    private String macAddr;

    private Integer inVlan;

    private Integer outVlan;

    private BigDecimal upRate;

    private BigDecimal downRate;

    private BigDecimal upPeakRate;

    private BigDecimal downPeakRate;

    private String status;

    private String remark;


    private Date expireTime;

    private Date createTime;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubscriber() {
        return subscriber;
    }

    public void setSubscriber(String subscriber) {
        this.subscriber = subscriber == null ? null : subscriber.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getBillType() {
        return billType;
    }

    public void setBillType(String billType) {
        this.billType = billType == null ? null : billType.trim();
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain == null ? null : domain.trim();
    }

    public String getAddrPool() {
        return addrPool;
    }

    public void setAddrPool(String addrPool) {
        this.addrPool = addrPool == null ? null : addrPool.trim();
    }

    public String getPolicy() {
        return policy;
    }

    public void setPolicy(String policy) {
        this.policy = policy == null ? null : policy.trim();
    }

    public Integer getActiveNum() {
        return activeNum;
    }

    public void setActiveNum(Integer activeNum) {
        this.activeNum = activeNum;
    }

    public BigInteger getFlowAmount() {
        return flowAmount;
    }

    public void setFlowAmount(BigInteger flowAmount) {
        this.flowAmount = flowAmount;
    }

    public Boolean getBindMac() {
        return bindMac;
    }

    public void setBindMac(Boolean bindMac) {
        this.bindMac = bindMac;
    }

    public Boolean getBindVlan() {
        return bindVlan;
    }

    public void setBindVlan(Boolean bindVlan) {
        this.bindVlan = bindVlan;
    }

    public String getIpAddr() {
        return ipAddr;
    }

    public void setIpAddr(String ipAddr) {
        this.ipAddr = ipAddr == null ? null : ipAddr.trim();
    }

    public String getMacAddr() {
        return macAddr;
    }

    public void setMacAddr(String macAddr) {
        this.macAddr = macAddr == null ? null : macAddr.trim();
    }

    public Integer getInVlan() {
        return inVlan;
    }

    public void setInVlan(Integer inVlan) {
        this.inVlan = inVlan;
    }

    public Integer getOutVlan() {
        return outVlan;
    }

    public void setOutVlan(Integer outVlan) {
        this.outVlan = outVlan;
    }

    public BigDecimal getUpRate() {
        return upRate;
    }

    public void setUpRate(BigDecimal upRate) {
        this.upRate = upRate;
    }

    public BigDecimal getDownRate() {
        return downRate;
    }

    public void setDownRate(BigDecimal downRate) {
        this.downRate = downRate;
    }


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }


    public Date getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(Date expireTime) {
        this.expireTime = expireTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }


    public Integer getNodeId() {
        return nodeId;
    }

    public void setNodeId(Integer nodeId) {
        this.nodeId = nodeId;
    }

    public BigDecimal getUpPeakRate() {
        return upPeakRate;
    }

    public void setUpPeakRate(BigDecimal upPeakRate) {
        this.upPeakRate = upPeakRate;
    }

    public BigDecimal getDownPeakRate() {
        return downPeakRate;
    }

    public void setDownPeakRate(BigDecimal downPeakRate) {
        this.downPeakRate = downPeakRate;
    }
}