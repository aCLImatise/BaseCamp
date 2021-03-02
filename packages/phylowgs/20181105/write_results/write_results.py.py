from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Write_Results_Py_V0_1_0 = CommandToolBuilder(tool="write_results.py", base_command=["write_results.py"], inputs=[ToolInput(tag="in_include_ssm_names", input_type=Boolean(optional=True), prefix="--include-ssm-names", doc=InputDocumentation(doc="Include SSM names in output (which may be sensitive\ndata) (default: False)")), ToolInput(tag="in_min_ssms", input_type=Int(optional=True), prefix="--min-ssms", doc=InputDocumentation(doc="Minimum number or percent of SSMs to retain a subclone\n(default: 0.01)\n")), ToolInput(tag="in_dataset_name", input_type=String(), position=0, doc=InputDocumentation(doc="Name identifying dataset")), ToolInput(tag="in_tree_file", input_type=String(), position=1, doc=InputDocumentation(doc="File containing sampled trees")), ToolInput(tag="in_tree_summary_output", input_type=String(), position=2, doc=InputDocumentation(doc="Output file for JSON-formatted tree summaries")), ToolInput(tag="in_mut_list_output", input_type=String(), position=3, doc=InputDocumentation(doc="Output file for JSON-formatted list of mutations")), ToolInput(tag="in_mut_ass_output", input_type=String(), position=4, doc=InputDocumentation(doc="Output file for JSON-formatted list of SSMs and CNVs\nassigned to each subclone"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Write_Results_Py_V0_1_0().translate("wdl", allow_empty_container=True)

