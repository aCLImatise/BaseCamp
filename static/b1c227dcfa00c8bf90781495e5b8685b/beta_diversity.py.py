from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int

Beta_Diversity_Py_V0_1_0 = CommandToolBuilder(tool="beta_diversity.py", base_command=["beta_diversity.py"], inputs=[ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--input-files", doc=InputDocumentation(doc="Input files (one per community) for which to compare\nfor bray-curtis dissimiliarity metrics")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Type of input file[s]: single, simple [tab-delimited,\nspecify --cols], bracken, kreport, kreport2, krona.\nSee docs for details")), ToolInput(tag="in_columns", input_type=Int(optional=True), prefix="--columns", doc=InputDocumentation(doc="Specify category/counts separated by single comma:\ncat,counts (1 = first col)")), ToolInput(tag="in_level", input_type=String(optional=True), prefix="--level", doc=InputDocumentation(doc="For Kraken or Krona files, taxonomy level for which to\ncompare samples. Default: all\n"))], outputs=[], container="quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Beta_Diversity_Py_V0_1_0().translate("wdl")

