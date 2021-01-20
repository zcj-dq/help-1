
-- ShipmentDetails
SELECT
    m.Code                                                                 AS input_7bwnctqg,
    m.Khbm                                                                 AS CustomerCode,
    m.TtYwmc + CHAR(13) + m.TtYwdz + CHAR(13) + m.TtDh + CHAR(13) + m.TtCz AS textarea_r9y8krw4,
    m.Shr                                                                  AS textarea_6ylbwkb3,
    m.Tzr                                                                  AS textarea_au0yjwmw,
    stuff((SELECT DISTINCT
               ',' + Wxhth
           FROM MxdCmd mmc
           WHERE
               mmc.MasterCode = m.Code AND mmc.Rev = m.Rev
           FOR XML PATH ('')), 1, 1, '')                                   AS input_ov2va21h,
    m.State                                                                AS select_6zvjci0n,
    m.Fprq                                                                 AS date_rok4eze8,
    m.Jhrq                                                                 AS date_souqjqds,
    m.Ysfs                                                                 AS select_64qngdac,
    mt.Cmhc                                                                AS input_6i7t52kt,
    m.Ckka                                                                 AS select_1ko8njzu,
    m.Mdka                                                                 AS select_r6nmjllx,
    mt.Khrq                                                                AS date_h6ya5idz,
    mt.Dgrq                                                                AS date_74ass7cs,
    m.bzjs                                                                 AS number_q9kzp42a,
    m.zmz                                                                  AS number_t732dyrr,
    m.ztj                                                                  AS number_2t1jtdc5,
    mtt.Mt                                                                 AS textarea_9b6y91ef,
    mtt.cm                                                                 AS textarea_kgw3bynd,
    m.jgtk                                                                 AS select_nziyb5vm,
    m.Jgtksm                                                               AS input_8gmbwtea,
    m.Wbbb                                                                 AS select_opgs5ecn,
    m.Zje                                                                  AS number_0sb3ly6t,
    m.TtYhxx                                                               AS textarea_ixihw7dt
FROM
    Mxd m
        INNER JOIN MxdTyzs mt ON m.Code = mt.MasterCode AND m.Rev = mt.Rev
        INNER JOIN MxdMt mtt ON m.Code = mtt.MasterCode AND m.Rev = mtt.Rev
WHERE
    m.RevFlag = 1

-- Shipment Goods details
SELECT
    m.Code    AS InvoiceNO,
    m.Khbm    AS CustomerCode,
    mc.Wxhth  AS input_txz3r9oc,
    mc.Khhh   AS input_g2vnx936,
    mc.Hgbm   AS input_rypuieyg,
    mc.Spywgg AS textarea_a6q02hci,
    mc.Jjsl   AS number_3xh6gs83,
    mc.Jjdw   AS input_mq0d5akg,
    mc.Wxdj   AS amount_mv3g9haj,
    mc.Wxzj   AS number_4wvu0kdc
FROM
    MxdCmd mc
        INNER JOIN Mxd m ON m.Code = mc.MasterCode AND m.Rev = mc.Rev
WHERE
    m.RevFlag = 1


-- Shipment Invoice Fees
SELECT
    m.Code AS InvoiceNO,
    m.Khbm AS CustomerCode,
    f.Fymc AS FeeDescription,
    f.Fyje AS Fee
FROM
    MxdFy f
        INNER JOIN Mxd m ON m.Code = f.MasterCode AND m.Rev = f.Rev
WHERE
    m.RevFlag = 1

--OrderDetail
SELECT
    w.Khbm                                                             AS CustomerCode,
    w.Khms + CHAR(13) + w.Khmc + CHAR(13) + + w.Dh + CHAR(13) + w.Mygb AS textarea_ngo5989x,
    w.TtYwmc + CHAR(13) + w.TtYwdz + CHAR(13) + w.TtDh                 AS textarea_cx7er9pv,
    w.State                                                            AS select_dabr1ry7,
    w.Code                                                             AS input_89m5ku6m,
    w.Khddh                                                            AS input_e3ndheal,
    w.jhq                                                              AS date_9r3b7ddl,
    w.ysfs                                                             AS select_8cj3xt6c,
    w.Shfssm                                                           AS input_sul0rlga,
    w.Qyrq                                                             AS date_23e5g0av,
    w.Qydd                                                             AS input_rkccgcwd,
    w.zmz                                                              AS number_2wua7858,
    w.ztj                                                              AS number_zxs9xor7,
    mt.Mt                                                              AS textarea_qia61rs9,
    mt.Cm                                                              AS textarea_p9no8qlm,
    w.jgtk                                                             AS select_tr7n3ai5,        --贸易方式
    w.Jgtksm                                                           AS input_66ypy9n3, --价格条款说明
    w.Wbbb                                                             AS select_usza1bpm,   --币别
    w.Zje                                                              AS amount_ers74z0a,
    w.TtYhxx                                                           AS textarea_jutl0900,
    w.Bz                                                               AS textarea_ibvtvcpl
FROM
    wxht w
        INNER JOIN WxhtMt mt ON w.Code = mt.MasterCode AND w.Rev = mt.rev
WHERE
    w.RevFlag = 1

-- Order Charge details
SELECT
    w.Khbm     AS CustomerCode,
    MasterCode AS PI_NO,
    Fymc       AS input_2gwh3pel,
    Fyje       AS amount_bts58hq0
FROM
    WxhtFy f
        INNER JOIN Wxht w ON w.Code = f.MasterCode AND w.Rev = f.Rev
WHERE
    w.RevFlag = 1

-- Order Goods details
SELECT
    w.Code       AS PI_NO,
    w.Khddh      AS PO_NO,
    w.Khbm       AS CustomerCode,
    wc.Khhh      AS input_oykt8xyw,
    wc.Spggyw_en AS textarea_rke3ntd4,
    wc.Jjsl      AS number_jpdjz8l5,
    wc.Jjdw      AS input_ccpkmdt7,
    wc.Wxdj      AS amount_4zhtoke1,
    wc.Wxzj      AS number_auaa7am3
FROM
    WxhtCmd wc
        INNER JOIN Wxht w ON w.Code = wc.MasterCode AND w.Rev = wc.Rev
WHERE
    w.RevFlag = 1