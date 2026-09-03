<!DOCTYPE html>

<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>キャラクター100の質問</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Zen+Kaku+Gothic+New:wght@400;500;700;900&family=Shippori+Mincho:wght@500;700&display=swap');

:root{
–paper: #F6F2EA;
–ink: #2B2622;
–sub: #8A7F6F;
–line: #DCD3C2;
–accent: #A6472E; /* 朱色寄りの落ち着いた赤 */
–accent-soft: #EFE0D3;
–card: #FFFFFF;
}
*{box-sizing:border-box;}
html,body{margin:0;padding:0;}
body{
background:var(–paper);
color:var(–ink);
font-family:‘Zen Kaku Gothic New’, sans-serif;
line-height:1.8;
}

.wrap{max-width:760px;margin:0 auto;padding:56px 24px 120px;}

header.page-head{
margin-bottom:48px;
}
.kicker{
font-family:‘Shippori Mincho’, serif;
font-size:14px;
letter-spacing:.14em;
color:var(–accent);
margin:0 0 10px;
}
h1.title{
font-family:‘Shippori Mincho’, serif;
font-size:clamp(28px,6vw,44px);
font-weight:700;
margin:0 0 6px;
line-height:1.4;
}
.title-input{
font-family:‘Shippori Mincho’, serif;
font-size:clamp(28px,6vw,44px);
font-weight:700;
border:none;
background:transparent;
width:100%;
color:var(–ink);
padding:2px 0;
border-bottom:1px dashed transparent;
}
.title-input:focus{outline:none;border-bottom:1px dashed var(–accent);}
.subtitle{
color:var(–sub);
font-size:14px;
margin-top:8px;
}

.toolbar{
display:flex;
gap:10px;
flex-wrap:wrap;
margin-top:24px;
}
button{
font-family:inherit;
font-size:13px;
border:1px solid var(–line);
background:var(–card);
color:var(–ink);
padding:9px 16px;
border-radius:999px;
cursor:pointer;
transition:border-color .15s ease, color .15s ease;
}
button:hover{border-color:var(–accent); color:var(–accent);}
button.primary{
background:var(–accent);
border-color:var(–accent);
color:#fff;
}
button.primary:hover{opacity:.9; color:#fff;}

.progress-row{
display:flex;
align-items:center;
gap:12px;
margin:32px 0 8px;
}
.progress-track{
flex:1;
height:4px;
background:var(–line);
border-radius:2px;
overflow:hidden;
}
.progress-fill{
height:100%;
background:var(–accent);
width:0%;
transition:width .3s ease;
}
.progress-label{
font-size:12px;
color:var(–sub);
white-space:nowrap;
font-variant-numeric:tabular-nums;
}

.toc{
margin-top:32px;
padding-top:24px;
border-top:1px solid var(–line);
}
.toc-label{
font-size:11px;
letter-spacing:.1em;
color:var(–sub);
margin-bottom:12px;
}
.toc-list{
display:flex;
flex-wrap:wrap;
gap:8px;
}
.toc-link{
font-family:‘Shippori Mincho’, serif;
font-size:13px;
color:var(–ink);
text-decoration:none;
border:1px solid var(–line);
background:var(–card);
padding:7px 14px;
border-radius:999px;
white-space:nowrap;
transition:border-color .15s ease, color .15s ease, background .15s ease;
}
.toc-link:hover{
border-color:var(–accent);
color:var(–accent);
}
.toc-link .toc-q{
font-family:‘Zen Kaku Gothic New’,sans-serif;
font-size:11px;
color:var(–sub);
margin-left:6px;
}

.section-head{
font-family:‘Shippori Mincho’, serif;
font-size:15px;
color:var(–accent);
margin:56px 0 20px;
padding-bottom:10px;
border-bottom:1px solid var(–line);
display:flex;
align-items:baseline;
gap:10px;
scroll-margin-top:20px;
}
.section-head .en{
font-family:‘Zen Kaku Gothic New’,sans-serif;
font-size:11px;
color:var(–sub);
letter-spacing:.08em;
}

.q-item{
background:var(–card);
border:1px solid var(–line);
border-radius:6px;
padding:20px 22px;
margin-bottom:14px;
}
.q-num{
font-family:‘Shippori Mincho’, serif;
font-size:12px;
color:var(–accent);
margin-bottom:6px;
letter-spacing:.04em;
}
.q-text{
font-size:15px;
font-weight:700;
margin-bottom:12px;
}
.a-input{
width:100%;
font-family:inherit;
font-size:14px;
color:var(–ink);
border:none;
border-bottom:1px solid var(–line);
background:transparent;
resize:none;
padding:6px 2px;
min-height:22px;
overflow:hidden;
line-height:1.7;
}
.a-input:focus{outline:none; border-bottom-color:var(–accent);}
.a-input::placeholder{color:#BEB4A3;}

footer{
margin-top:64px;
padding-top:24px;
border-top:1px solid var(–line);
font-size:12px;
color:var(–sub);
text-align:center;
}

.toast{
position:fixed;
bottom:24px;
left:50%;
transform:translateX(-50%) translateY(20px);
background:var(–ink);
color:var(–paper);
padding:10px 22px;
border-radius:999px;
font-size:13px;
opacity:0;
pointer-events:none;
transition:opacity .2s ease, transform .2s ease;
}
.toast.show{
opacity:1;
transform:translateX(-50%) translateY(0);
}

@media (max-width:520px){
.wrap{padding:40px 16px 100px;}
.q-item{padding:16px;}
}
</style>

</head>
<body>

<div class="wrap">
  <header class="page-head">
    <p class="kicker">CHARACTER PROFILE — 100の質問</p>
    <input class="title-input" id="charName" placeholder="キャラクターの名前を入力">
    <p class="subtitle">答えた内容はこのブラウザに自動で保存されます。名前・回答ともに編集するとすぐ反映されます。</p>

```
<div class="toolbar">
  <button class="primary" onclick="exportJSON()">回答をファイルに保存(JSON)</button>
  <button onclick="importJSON()">ファイルから読み込む</button>
  <button onclick="exportText()">テキストとして書き出す</button>
  <button onclick="clearAll()">全部リセット</button>
</div>

<div class="progress-row">
  <div class="progress-track"><div class="progress-fill" id="progressFill"></div></div>
  <div class="progress-label" id="progressLabel">0 / 100 回答済み</div>
</div>

<nav class="toc" id="toc">
  <div class="toc-label">目次 — カテゴリをタップすると移動します</div>
  <div class="toc-list" id="tocList"></div>
</nav>
```

  </header>

  <main id="questionArea"></main>

  <footer>
    このページはブラウザ内(localStorage)にのみ保存されます。他の端末で見る場合は「ファイルに保存」→「読み込む」を使ってください。
  </footer>
</div>

<div class="toast" id="toast">保存しました</div>

<input type="file" id="fileInput" accept=".json" style="display:none">

<script>
const QUESTIONS = [
  {cat:"基本プロフィール", en:"BASIC", items:[
    "名前(フルネーム)を教えてください",
    "呼ばれたい愛称はありますか？",
    "年齢は？",
    "誕生日は？",
    "性別は？",
    "身長・体重は？",
    "出身地はどこですか？",
    "現在の居住地は？",
    "職業・肩書きは？",
    "種族や設定上の分類があれば教えてください",
  ]},
  {cat:"見た目", en:"APPEARANCE", items:[
    "髪の色と髪型の特徴は？",
    "瞳の色は？",
    "肌の色や特徴は？",
    "よく着ている服装は？",
    "特徴的なアクセサリーや持ち物は？",
    "立ち姿の癖や仕草の特徴は？",
    "笑うとどんな表情になりますか？",
    "身体的なコンプレックスはありますか？",
    "第一印象はどんな感じですか？",
    "変身したり衣装が変わったりしますか？",
  ]},
  {cat:"性格", en:"PERSONALITY", items:[
    "一言で表すとどんな性格？",
    "長所を3つ挙げてください",
    "短所を3つ挙げてください",
    "口癖はありますか？",
    "怒るとどうなりますか？",
    "悲しいときどう振る舞いますか？",
    "照れたときのリアクションは？",
    "笑いのツボは？",
    "怖いものは何ですか？",
    "ストレス発散方法は？",
    "一人称は何ですか？",
    "二人称(相手の呼び方)の特徴は？",
    "話し方の特徴(語尾・敬語など)は？",
    "初対面の人にどう接しますか？",
    "本音と建前、使い分けますか？",
  ]},
  {cat:"好き・嫌い", en:"LIKES & DISLIKES", items:[
    "好きな食べ物は？",
    "嫌いな食べ物は？",
    "好きな色は？",
    "好きな季節は？",
    "好きな天気は？",
    "好きな動物は？",
    "苦手な動物や虫はいますか？",
    "好きな音楽やジャンルは？",
    "趣味は何ですか？",
    "特技は何ですか？",
    "苦手なことは？",
    "休日の過ごし方は？",
    "好きな場所はどこですか？",
    "嫌いな場所や苦手なシチュエーションは？",
    "collectionしているものはありますか？",
  ]},
  {cat:"人間関係", en:"RELATIONSHIPS", items:[
    "家族構成を教えてください",
    "家族との関係性は？",
    "親友と呼べる存在はいますか？",
    "ライバルはいますか？",
    "尊敬している人物は？",
    "苦手な人・タイプはいますか？",
    "恋愛対象はいますか？",
    "恋愛においての価値観は？",
    "友達を作るのは得意ですか？",
    "ペットや使い魔はいますか？",
  ]},
  {cat:"生い立ち・背景", en:"BACKGROUND", items:[
    "生まれ育った環境を教えてください",
    "幼少期はどんな子供でしたか？",
    "転機となった出来事はありますか？",
    "今の目標や夢は何ですか？",
    "過去に後悔していることはありますか？",
    "トラウマや心の傷はありますか？",
    "誇りに思っていることは？",
    "現在の悩みは何ですか？",
    "将来どうなりたいですか？",
    "座右の銘はありますか？",
  ]},
  {cat:"能力・設定", en:"ABILITIES", items:[
    "特殊能力や魔法はありますか？",
    "その能力の弱点は？",
    "戦闘スタイルや得意技は？",
    "使用する武器や道具は？",
    "能力を手に入れた経緯は？",
    "苦手な状況・弱点は？",
    "得意な学問やスキルは？",
    "運動神経は良い方ですか？",
    "危機的状況でどう行動しますか？",
    "リーダータイプか、サポートタイプか？",
  ]},
  {cat:"日常・その他", en:"DAILY LIFE", items:[
    "朝は早起き？夜型？",
    "寝るときの習慣はありますか？",
    "好きな一日の過ごし方は？",
    "料理はできますか？",
    "運動はしますか？",
    "お酒や甘いものは好きですか？",
    "よく行く場所はありますか？",
    "生活する上でのこだわりは？",
    "SNSやネットは使いますか？",
    "実は苦手にしていることは？",
  ]},
  {cat:"フリー質問", en:"FREE", items:[
    "座右の銘や大事にしている言葉は？",
    "あなたを動物に例えると？",
    "あなたを一言で表す漢字一字は？",
    "今一番欲しいものは？",
    "もし願いが一つ叶うなら？",
    "読者・ファンに一言お願いします",
    "このキャラクターを作った理由・きっかけは？",
    "このキャラクターの好きなところは？",
    "今後こんなエピソードを描いてみたい、というのはありますか？",
    "最後に自由にひとことどうぞ",
  ]},
];

const STORAGE_KEY = "char100_answers_v1";
const NAME_KEY = "char100_name_v1";

let state = {};
try{
  state = JSON.parse(localStorage.getItem(STORAGE_KEY) || "{}");
}catch(e){ state = {}; }

const nameInput = document.getElementById("charName");
nameInput.value = localStorage.getItem(NAME_KEY) || "";
nameInput.addEventListener("input", () => {
  localStorage.setItem(NAME_KEY, nameInput.value);
});

const area = document.getElementById("questionArea");
const tocList = document.getElementById("tocList");
let globalIndex = 0;

QUESTIONS.forEach((section, sIdx) => {
  const sectionId = `section-${sIdx}`;
  const firstQNum = globalIndex + 1;

  const head = document.createElement("div");
  head.className = "section-head";
  head.id = sectionId;
  head.innerHTML = `${section.cat} <span class="en">${section.en}</span>`;
  area.appendChild(head);

  const tocLink = document.createElement("a");
  tocLink.className = "toc-link";
  tocLink.href = `#${sectionId}`;
  tocLink.innerHTML = `${section.cat}<span class="toc-q">Q${String(firstQNum).padStart(3,"0")}</span>`;
  tocList.appendChild(tocLink);

  section.items.forEach((q) => {
    globalIndex++;
    const num = globalIndex;
    const item = document.createElement("div");
    item.className = "q-item";

    const numEl = document.createElement("div");
    numEl.className = "q-num";
    numEl.textContent = `Q${String(num).padStart(3,"0")}`;

    const qEl = document.createElement("div");
    qEl.className = "q-text";
    qEl.textContent = q;

    const aEl = document.createElement("textarea");
    aEl.className = "a-input";
    aEl.rows = 1;
    aEl.placeholder = "ここに回答を書く…";
    aEl.value = state[num] || "";
    autoResize(aEl);

    aEl.addEventListener("input", () => {
      state[num] = aEl.value;
      autoResize(aEl);
      persist();
      updateProgress();
    });

    item.appendChild(numEl);
    item.appendChild(qEl);
    item.appendChild(aEl);
    area.appendChild(item);
  });
});

function autoResize(el){
  el.style.height = "auto";
  el.style.height = (el.scrollHeight) + "px";
}

function persist(){
  localStorage.setItem(STORAGE_KEY, JSON.stringify(state));
}

function updateProgress(){
  const total = globalIndex;
  const answered = Object.values(state).filter(v => v && v.trim().length > 0).length;
  document.getElementById("progressFill").style.width = (answered/total*100) + "%";
  document.getElementById("progressLabel").textContent = `${answered} / ${total} 回答済み`;
}
updateProgress();

function showToast(msg){
  const t = document.getElementById("toast");
  t.textContent = msg;
  t.classList.add("show");
  setTimeout(()=> t.classList.remove("show"), 1800);
}

async function saveOrShareFile(blob, filename, mimeType){
  // スマホ等でWeb Share APIに対応していれば、共有シート(「ファイル」「Googleドライブ」等を選べる画面)を出す
  const file = new File([blob], filename, {type: mimeType});
  if (navigator.canShare && navigator.canShare({files:[file]})) {
    try{
      await navigator.share({files:[file], title: filename});
      showToast("共有メニューから保存先を選べます");
      return;
    }catch(err){
      // ユーザーがキャンセルした場合などはダウンロードにフォールバックしない
      if (err && err.name === "AbortError") return;
    }
  }
  // 非対応ブラウザ・PCの場合は通常のダウンロード(ダウンロードフォルダに保存されます)
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.href = url;
  a.download = filename;
  a.click();
  URL.revokeObjectURL(url);
  showToast("ダウンロードフォルダに保存しました");
}

function exportJSON(){
  const payload = { name: nameInput.value, answers: state };
  const blob = new Blob([JSON.stringify(payload, null, 2)], {type:"application/json"});
  saveOrShareFile(blob, (nameInput.value || "character") + "_100questions.json", "application/json");
}

function importJSON(){
  document.getElementById("fileInput").click();
}
document.getElementById("fileInput").addEventListener("change", (e) => {
  const file = e.target.files[0];
  if(!file) return;
  const reader = new FileReader();
  reader.onload = (ev) => {
    try{
      const data = JSON.parse(ev.target.result);
      state = data.answers || {};
      nameInput.value = data.name || "";
      localStorage.setItem(NAME_KEY, nameInput.value);
      persist();
      location.reload();
    }catch(err){
      alert("読み込みに失敗しました。正しいJSONファイルか確認してください。");
    }
  };
  reader.readAsText(file);
});

function exportText(){
  let text = `${nameInput.value || "無題のキャラクター"} — 100の質問\n\n`;
  let i = 0;
  QUESTIONS.forEach(section => {
    text += `\n■ ${section.cat}\n`;
    section.items.forEach(q => {
      i++;
      text += `Q${String(i).padStart(3,"0")}. ${q}\nA. ${state[i] || "(未回答)"}\n\n`;
    });
  });
  const blob = new Blob([text], {type:"text/plain"});
  saveOrShareFile(blob, (nameInput.value || "character") + "_100questions.txt", "text/plain");
}

function clearAll(){
  if(confirm("すべての回答を削除します。よろしいですか？")){
    state = {};
    persist();
    location.reload();
  }
}
</script>

</body>
</html>
