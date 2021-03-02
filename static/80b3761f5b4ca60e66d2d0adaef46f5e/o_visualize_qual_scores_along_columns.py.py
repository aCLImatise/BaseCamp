from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Visualize_Qual_Scores_Along_Columns_Py_V0_1_0 = CommandToolBuilder(tool="o_visualize_qual_scores_along_columns.py", base_command=["o-visualize-qual-scores-along-columns.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Visualize_Qual_Scores_Along_Columns_Py_V0_1_0().translate("wdl", allow_empty_container=True)

