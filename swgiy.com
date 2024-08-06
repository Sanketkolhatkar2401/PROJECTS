{"nbformat":4,"nbformat_minor":0,"metadata":{"colab":{"provenance":[],"authorship_tag":"ABX9TyP7Nv3iOIy/Q6XK6l3I+CyK"},"kernelspec":{"name":"python3","display_name":"Python 3"},"language_info":{"name":"python"}},"cells":[{"cell_type":"code","execution_count":null,"metadata":{"id":"KkP_vjTIGulc"},"outputs":[],"source":[]},{"cell_type":"code","source":["from google.colab import drive\n","drive.mount('/content/drive')"],"metadata":{"colab":{"base_uri":"https://localhost:8080/"},"id":"jRWNbk-iPudJ","executionInfo":{"status":"ok","timestamp":1719551357499,"user_tz":-330,"elapsed":27201,"user":{"displayName":"Sanket Kolhatkar","userId":"11428807782018301529"}},"outputId":"2b157d8a-e74a-4c40-9e52-d19f587cbf1a"},"execution_count":null,"outputs":[{"output_type":"stream","name":"stdout","text":["Mounted at /content/drive\n"]}]},{"cell_type":"code","source":["import pandas as pd"],"metadata":{"id":"EXFgQ-enPvXK"},"execution_count":null,"outputs":[]},{"cell_type":"code","source":["data = pd.read_csv('/content/drive/MyDrive/swiggy.csv')"],"metadata":{"id":"kLJjh-YMP-kh"},"execution_count":null,"outputs":[]},{"cell_type":"code","source":["data.head()"],"metadata":{"colab":{"base_uri":"https://localhost:8080/","height":275},"id":"yeXo1zSbQAbU","executionInfo":{"status":"ok","timestamp":1719551417346,"user_tz":-330,"elapsed":467,"user":{"displayName":"Sanket Kolhatkar","userId":"11428807782018301529"}},"outputId":"e8dbcf31-9576-43f9-cbec-6942c5378511"},"execution_count":null,"outputs":[{"output_type":"execute_result","data":{"text/plain":["    ID         Area       City         Restaurant  Price  Avg ratings  \\\n","0  211  Koramangala  Bangalore        Tandoor Hut  300.0          4.4   \n","1  221  Koramangala  Bangalore      Tunday Kababi  300.0          4.1   \n","2  246    Jogupalya  Bangalore            Kim Lee  650.0          4.4   \n","3  248  Indiranagar  Bangalore  New Punjabi Hotel  250.0          3.9   \n","4  249  Indiranagar  Bangalore                Nh8  350.0          4.0   \n","\n","   Total ratings                                          Food type  \\\n","0            100          Biryani,Chinese,North Indian,South Indian   \n","1            100                                   Mughlai,Lucknowi   \n","2            100                                            Chinese   \n","3            500               North Indian,Punjabi,Tandoor,Chinese   \n","4             50  Rajasthani,Gujarati,North Indian,Snacks,Desser...   \n","\n","        Address  Delivery time  \n","0     5Th Block             59  \n","1     5Th Block             56  \n","2   Double Road             50  \n","3  80 Feet Road             57  \n","4  80 Feet Road             63  "],"text/html":["\n","  <div id=\"df-21b5a483-4eaf-48e8-9b59-97175b0e76b7\" class=\"colab-df-container\">\n","    <div>\n","<style scoped>\n","    .dataframe tbody tr th:only-of-type {\n","        vertical-align: middle;\n","    }\n","\n","    .dataframe tbody tr th {\n","        vertical-align: top;\n","    }\n","\n","    .dataframe thead th {\n","        text-align: right;\n","    }\n","</style>\n","<table border=\"1\" class=\"dataframe\">\n","  <thead>\n","    <tr style=\"text-align: right;\">\n","      <th></th>\n","      <th>ID</th>\n","      <th>Area</th>\n","      <th>City</th>\n","      <th>Restaurant</th>\n","      <th>Price</th>\n","      <th>Avg ratings</th>\n","      <th>Total ratings</th>\n","      <th>Food type</th>\n","      <th>Address</th>\n","      <th>Delivery time</th>\n","    </tr>\n","  </thead>\n","  <tbody>\n","    <tr>\n","      <th>0</th>\n","      <td>211</td>\n","      <td>Koramangala</td>\n","      <td>Bangalore</td>\n","      <td>Tandoor Hut</td>\n","      <td>300.0</td>\n","      <td>4.4</td>\n","      <td>100</td>\n","      <td>Biryani,Chinese,North Indian,South Indian</td>\n","      <td>5Th Block</td>\n","      <td>59</td>\n","    </tr>\n","    <tr>\n","      <th>1</th>\n","      <td>221</td>\n","      <td>Koramangala</td>\n","      <td>Bangalore</td>\n","      <td>Tunday Kababi</td>\n","      <td>300.0</td>\n","      <td>4.1</td>\n","      <td>100</td>\n","      <td>Mughlai,Lucknowi</td>\n","      <td>5Th Block</td>\n","      <td>56</td>\n","    </tr>\n","    <tr>\n","      <th>2</th>\n","      <td>246</td>\n","      <td>Jogupalya</td>\n","      <td>Bangalore</td>\n","      <td>Kim Lee</td>\n","      <td>650.0</td>\n","      <td>4.4</td>\n","      <td>100</td>\n","      <td>Chinese</td>\n","      <td>Double Road</td>\n","      <td>50</td>\n","    </tr>\n","    <tr>\n","      <th>3</th>\n","      <td>248</td>\n","      <td>Indiranagar</td>\n","      <td>Bangalore</td>\n","      <td>New Punjabi Hotel</td>\n","      <td>250.0</td>\n","      <td>3.9</td>\n","      <td>500</td>\n","      <td>North Indian,Punjabi,Tandoor,Chinese</td>\n","      <td>80 Feet Road</td>\n","      <td>57</td>\n","    </tr>\n","    <tr>\n","      <th>4</th>\n","      <td>249</td>\n","      <td>Indiranagar</td>\n","      <td>Bangalore</td>\n","      <td>Nh8</td>\n","      <td>350.0</td>\n","      <td>4.0</td>\n","      <td>50</td>\n","      <td>Rajasthani,Gujarati,North Indian,Snacks,Desser...</td>\n","      <td>80 Feet Road</td>\n","      <td>63</td>\n","    </tr>\n","  </tbody>\n","</table>\n","</div>\n","    <div class=\"colab-df-buttons\">\n","\n","  <div class=\"colab-df-container\">\n","    <button class=\"colab-df-convert\" onclick=\"convertToInteractive('df-21b5a483-4eaf-48e8-9b59-97175b0e76b7')\"\n","            title=\"Convert this dataframe to an interactive table.\"\n","            style=\"display:none;\">\n","\n","  <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"24px\" viewBox=\"0 -960 960 960\">\n","    <path d=\"M120-120v-720h720v720H120Zm60-500h600v-160H180v160Zm220 220h160v-160H400v160Zm0 220h160v-160H400v160ZM180-400h160v-160H180v160Zm440 0h160v-160H620v160ZM180-180h160v-160H180v160Zm440 0h160v-160H620v160Z\"/>\n","  </svg>\n","    </button>\n","\n","  <style>\n","    .colab-df-container {\n","      display:flex;\n","      gap: 12px;\n","    }\n","\n","    .colab-df-convert {\n","      background-color: #E8F0FE;\n","      border: none;\n","      border-radius: 50%;\n","      cursor: pointer;\n","      display: none;\n","      fill: #1967D2;\n","      height: 32px;\n","      padding: 0 0 0 0;\n","      width: 32px;\n","    }\n","\n","    .colab-df-convert:hover {\n","      background-color: #E2EBFA;\n","      box-shadow: 0px 1px 2px rgba(60, 64, 67, 0.3), 0px 1px 3px 1px rgba(60, 64, 67, 0.15);\n","      fill: #174EA6;\n","    }\n","\n","    .colab-df-buttons div {\n","      margin-bottom: 4px;\n","    }\n","\n","    [theme=dark] .colab-df-convert {\n","      background-color: #3B4455;\n","      fill: #D2E3FC;\n","    }\n","\n","    [theme=dark] .colab-df-convert:hover {\n","      background-color: #434B5C;\n","      box-shadow: 0px 1px 3px 1px rgba(0, 0, 0, 0.15);\n","      filter: drop-shadow(0px 1px 2px rgba(0, 0, 0, 0.3));\n","      fill: #FFFFFF;\n","    }\n","  </style>\n","\n","    <script>\n","      const buttonEl =\n","        document.querySelector('#df-21b5a483-4eaf-48e8-9b59-97175b0e76b7 button.colab-df-convert');\n","      buttonEl.style.display =\n","        google.colab.kernel.accessAllowed ? 'block' : 'none';\n","\n","      async function convertToInteractive(key) {\n","        const element = document.querySelector('#df-21b5a483-4eaf-48e8-9b59-97175b0e76b7');\n","        const dataTable =\n","          await google.colab.kernel.invokeFunction('convertToInteractive',\n","                                                    [key], {});\n","        if (!dataTable) return;\n","\n","        const docLinkHtml = 'Like what you see? Visit the ' +\n","          '<a target=\"_blank\" href=https://colab.research.google.com/notebooks/data_table.ipynb>data table notebook</a>'\n","          + ' to learn more about interactive tables.';\n","        element.innerHTML = '';\n","        dataTable['output_type'] = 'display_data';\n","        await google.colab.output.renderOutput(dataTable, element);\n","        const docLink = document.createElement('div');\n","        docLink.innerHTML = docLinkHtml;\n","        element.appendChild(docLink);\n","      }\n","    </script>\n","  </div>\n","\n","\n","<div id=\"df-6a64658b-fee9-4096-9543-cf940b9279e2\">\n","  <button class=\"colab-df-quickchart\" onclick=\"quickchart('df-6a64658b-fee9-4096-9543-cf940b9279e2')\"\n","            title=\"Suggest charts\"\n","            style=\"display:none;\">\n","\n","<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"24px\"viewBox=\"0 0 24 24\"\n","     width=\"24px\">\n","    <g>\n","        <path d=\"M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z\"/>\n","    </g>\n","</svg>\n","  </button>\n","\n","<style>\n","  .colab-df-quickchart {\n","      --bg-color: #E8F0FE;\n","      --fill-color: #1967D2;\n","      --hover-bg-color: #E2EBFA;\n","      --hover-fill-color: #174EA6;\n","      --disabled-fill-color: #AAA;\n","      --disabled-bg-color: #DDD;\n","  }\n","\n","  [theme=dark] .colab-df-quickchart {\n","      --bg-color: #3B4455;\n","      --fill-color: #D2E3FC;\n","      --hover-bg-color: #434B5C;\n","      --hover-fill-color: #FFFFFF;\n","      --disabled-bg-color: #3B4455;\n","      --disabled-fill-color: #666;\n","  }\n","\n","  .colab-df-quickchart {\n","    background-color: var(--bg-color);\n","    border: none;\n","    border-radius: 50%;\n","    cursor: pointer;\n","    display: none;\n","    fill: var(--fill-color);\n","    height: 32px;\n","    padding: 0;\n","    width: 32px;\n","  }\n","\n","  .colab-df-quickchart:hover {\n","    background-color: var(--hover-bg-color);\n","    box-shadow: 0 1px 2px rgba(60, 64, 67, 0.3), 0 1px 3px 1px rgba(60, 64, 67, 0.15);\n","    fill: var(--button-hover-fill-color);\n","  }\n","\n","  .colab-df-quickchart-complete:disabled,\n","  .colab-df-quickchart-complete:disabled:hover {\n","    background-color: var(--disabled-bg-color);\n","    fill: var(--disabled-fill-color);\n","    box-shadow: none;\n","  }\n","\n","  .colab-df-spinner {\n","    border: 2px solid var(--fill-color);\n","    border-color: transparent;\n","    border-bottom-color: var(--fill-color);\n","    animation:\n","      spin 1s steps(1) infinite;\n","  }\n","\n","  @keyframes spin {\n","    0% {\n","      border-color: transparent;\n","      border-bottom-color: var(--fill-color);\n","      border-left-color: var(--fill-color);\n","    }\n","    20% {\n","      border-color: transparent;\n","      border-left-color: var(--fill-color);\n","      border-top-color: var(--fill-color);\n","    }\n","    30% {\n","      border-color: transparent;\n","      border-left-color: var(--fill-color);\n","      border-top-color: var(--fill-color);\n","      border-right-color: var(--fill-color);\n","    }\n","    40% {\n","      border-color: transparent;\n","      border-right-color: var(--fill-color);\n","      border-top-color: var(--fill-color);\n","    }\n","    60% {\n","      border-color: transparent;\n","      border-right-color: var(--fill-color);\n","    }\n","    80% {\n","      border-color: transparent;\n","      border-right-color: var(--fill-color);\n","      border-bottom-color: var(--fill-color);\n","    }\n","    90% {\n","      border-color: transparent;\n","      border-bottom-color: var(--fill-color);\n","    }\n","  }\n","</style>\n","\n","  <script>\n","    async function quickchart(key) {\n","      const quickchartButtonEl =\n","        document.querySelector('#' + key + ' button');\n","      quickchartButtonEl.disabled = true;  // To prevent multiple clicks.\n","      quickchartButtonEl.classList.add('colab-df-spinner');\n","      try {\n","        const charts = await google.colab.kernel.invokeFunction(\n","            'suggestCharts', [key], {});\n","      } catch (error) {\n","        console.error('Error during call to suggestCharts:', error);\n","      }\n","      quickchartButtonEl.classList.remove('colab-df-spinner');\n","      quickchartButtonEl.classList.add('colab-df-quickchart-complete');\n","    }\n","    (() => {\n","      let quickchartButtonEl =\n","        document.querySelector('#df-6a64658b-fee9-4096-9543-cf940b9279e2 button');\n","      quickchartButtonEl.style.display =\n","        google.colab.kernel.accessAllowed ? 'block' : 'none';\n","    })();\n","  </script>\n","</div>\n","\n","    </div>\n","  </div>\n"],"application/vnd.google.colaboratory.intrinsic+json":{"type":"dataframe","variable_name":"data","summary":"{\n  \"name\": \"data\",\n  \"rows\": 8680,\n  \"fields\": [\n    {\n      \"column\": \"ID\",\n      \"properties\": {\n        \"dtype\": \"number\",\n        \"std\": 158671,\n        \"min\": 211,\n        \"max\": 466928,\n        \"num_unique_values\": 8680,\n        \"samples\": [\n          316772,\n          118742,\n          280507\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Area\",\n      \"properties\": {\n        \"dtype\": \"category\",\n        \"num_unique_values\": 833,\n        \"samples\": [\n          \"Lakdi Ka Pul\",\n          \"Umra Jakat\",\n          \"Salt Lake Area\"\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"City\",\n      \"properties\": {\n        \"dtype\": \"category\",\n        \"num_unique_values\": 9,\n        \"samples\": [\n          \"Ahmedabad\",\n          \"Hyderabad\",\n          \"Delhi\"\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Restaurant\",\n      \"properties\": {\n        \"dtype\": \"string\",\n        \"num_unique_values\": 7865,\n        \"samples\": [\n          \"Sri Radhe Chills And Thrills\",\n          \"Rcb Bar & Cafe\",\n          \"Momo Nation Cafe\"\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Price\",\n      \"properties\": {\n        \"dtype\": \"number\",\n        \"std\": 230.9400740572591,\n        \"min\": 0.0,\n        \"max\": 2500.0,\n        \"num_unique_values\": 120,\n        \"samples\": [\n          0.0,\n          140.0,\n          800.0\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Avg ratings\",\n      \"properties\": {\n        \"dtype\": \"number\",\n        \"std\": 0.6476289019849697,\n        \"min\": 2.0,\n        \"max\": 5.0,\n        \"num_unique_values\": 30,\n        \"samples\": [\n          5.0,\n          3.5,\n          2.7\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Total ratings\",\n      \"properties\": {\n        \"dtype\": \"number\",\n        \"std\": 391,\n        \"min\": 20,\n        \"max\": 10000,\n        \"num_unique_values\": 8,\n        \"samples\": [\n          500,\n          5000,\n          100\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Food type\",\n      \"properties\": {\n        \"dtype\": \"category\",\n        \"num_unique_values\": 3734,\n        \"samples\": [\n          \"Punjabi,Thalis,North Indian,Tandoor,Snacks\",\n          \"Gujarati,North Indian,Thalis\",\n          \"Street Food,Fast Food,Snacks,Beverages\"\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Address\",\n      \"properties\": {\n        \"dtype\": \"category\",\n        \"num_unique_values\": 2339,\n        \"samples\": [\n          \"Bheemanna Garden St Sri Ram Nagar\",\n          \"Shiva Road Sector 7\",\n          \"Oposite Hedua Park\"\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    },\n    {\n      \"column\": \"Delivery time\",\n      \"properties\": {\n        \"dtype\": \"number\",\n        \"std\": 14,\n        \"min\": 20,\n        \"max\": 109,\n        \"num_unique_values\": 81,\n        \"samples\": [\n          35,\n          59,\n          37\n        ],\n        \"semantic_type\": \"\",\n        \"description\": \"\"\n      }\n    }\n  ]\n}"}},"metadata":{},"execution_count":5}]},{"cell_type":"code","source":[],"metadata":{"id":"Xh_RkKurQFeY"},"execution_count":null,"outputs":[]}]}