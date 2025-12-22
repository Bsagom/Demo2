---
marp: true
theme: gaia
class: lead
backgroundColor: #fff
paginate: true
header: 'G-Insight: Business Intelligence Dashboard'
footer: '2025-12-22 | G-Insight Project'
style: |
  h1 { font-size: 2.5em; color: #333; }
  h2 { font-size: 1.8em; color: #555; }
  section { font-family: 'Arial', sans-serif; }
---

# **G-Insight**
### (G-Market Insight Assistant)

**돈이 되는 프로모션과 충성 고객을 찾는 비즈니스 대시보드**

---

## 1. 프로젝트 개요 (Overview)

- **목표**: 대규모 주문 데이터를 분석하여 **수익성**과 **고객 행동**을 직관적으로 시각화
- **핵심 가치**:
    - "매출만 오르면 좋은가?" -> **순수익(Profit) 중심 분석**
    - "누구에게 마케팅하나?" -> **정교한 타겟팅(Targeting)**
- **데이터셋**: Kaggle Olist E-commerce Dataset
    - 주문, 상품, 고객, 결제, 리뷰 등 9개 테이블 융합

---

## 2. 타겟 유저 & Pain Points

| 타겟 유저 | 직면한 문제 (Pain Point) |
| :--- | :--- |
| **카테고리 MD** | "할인 쿠폰으로 매출은 늘었는데, **진짜 마진이 남았나요?**"<br>"신상품 출시 문자를 **누구에게 보내야 가장 효과적일까요?**" |
| **마케팅 팀장** | "우리 플랫폼의 **VIP 고객들이 이탈**하고 있는 징후가 보이나요?"<br>"고객 재구매율이 어떻게 변하고 있나요?" |

---

## 3. 핵심 기능 1: 프로모션 수익성 분석기
**(Promotion ROI Analyzer)**

- **기능**: 이벤트 기간 GMV(거래액) 대비 **실제 영업이익** 시뮬레이션
- **입력**: 분석 기간, 예상 마진율, 할인율
- **출력 (Insight)**:
    > "할인율 15% 적용 시 주문량은 2배 증가하나, **영업이익은 -2%로 적자 전환**됩니다. **권장 할인율은 10%**입니다."

---

## 4. 핵심 기능 2: 고객 세분화 엔진
**(RFM Segmentation)**

- **고객 행동 점수화 (RFM)**:
    - **R**ecency: 최근 언제 샀는가?
    - **F**requency: 얼마나 자주 샀는가?
    - **M**onetary: 얼마나 많이 샀는가?
- **활용 방안**:
    - 👑 **VIP 고객**: 신규 런칭 우선 홍보 대상
    - ⚠️ **이탈 위험군**: 컴백(Return) 쿠폰 발송 대상

---

## 5. 핵심 기능 3: 장바구니/연관 분석
**(Basket Analysis)**

- **기능**: 특정 상품 구매자가 **'함께'** 많이 구매하는 카테고리 분석
- **시각화**: Cross-Category Heatmap
- **Action Item**:
    - "가구 구매자의 30%가 1주일 내 **인테리어 소품** 구매"
    - ➡ **가구 상세페이지 하단에 소품 추천 배너 배치**

---

## 6. 데이터 구조 (Star Schema)

**"단순 Join을 넘어, 비즈니스 인사이트를 위한 데이터 모델링"**

- **Fact Tables** (거래 내역):
    - `Orders`: 주문 정보, 시간, 상태
    - `Order_Items`: 상품 가격, 배송비, 수량
- **Dimension Tables** (속성 정보):
    - `Products`: 카테고리, 상품 스펙
    - `Customers`: 고객 위치, **Unique ID (통합 분석 핵심)**

---

## 7. 기술 스택 (Tech Stack)

<div style="display: flex; justify-content: space-around;">

<div>

### 🛠 Data & DB
- **MySQL / SQLite**
- **Window Functions**
- **CTE / Group By**

</div>
<div>

### 🐍 Logic & Web
- **Python 3.9+**
- **Pandas**
- **Streamlit** (Dashboard UI)

</div>
<div>

### 📊 Visualization
- **Plotly** (Interactivity)
- **Matplotlib**

</div>

</div>

---

## 8. 구현 로드맵 (2주 계획)

**Week 1: Data Build**
- [x] Olist 데이터셋 분석 및 전처리
- [ ] Star Schema DB 구축 및 적재
- [ ] 핵심 SQL 쿼리 (RFM, ROI) 작성

**Week 2: App Develop**
- [ ] Pandas & Jupyter 로직 검증
- [ ] Streamlit 대시보드 UI 구현
- [ ] Action Item 추천 알고리즘 탑재 및 배포

---

## 9. 차별화 포인트 (Killer Point)

**단순 현황판(Dashboard) ❌**
**행동 제안(Actionable Insight) ⭕**

> **[Alert]**
> "20대 여성 고객 이탈률 5% 증가 감지!"
>
> ⬇
>
> **[Action]**
> "**뷰티 카테고리 무료배송 쿠폰** 발송 시, 예상 회복 매출 **2,000만원**"

---

# **Q & A**

### 감사합니다.

