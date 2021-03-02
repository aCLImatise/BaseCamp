from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pepxml2Csv_Py_V0_1_0 = CommandToolBuilder(tool="pepxml2csv.py", base_command=["pepxml2csv.py"], inputs=[ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="= sys.argv[1]"))], outputs=[], container="quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepxml2Csv_Py_V0_1_0().translate("wdl")

