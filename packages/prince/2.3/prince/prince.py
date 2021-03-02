from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Prince_V0_1_0 = CommandToolBuilder(tool="prince", base_command=["prince"], inputs=[ToolInput(tag="in_boost_output", input_type=File(optional=True), prefix="--boost_output", doc=InputDocumentation(doc="output file for training data / training data used to\npredict copy numbers for queries")), ToolInput(tag="in_target_output", input_type=Int(optional=True), prefix="--target_output", doc=InputDocumentation(doc="output file for query copy number predictions")), ToolInput(tag="in_templates", input_type=String(optional=True), prefix="--templates", doc=InputDocumentation(doc="VNTR templates. Default is for M.TB")), ToolInput(tag="in_target_file", input_type=File(optional=True), prefix="--target_file", doc=InputDocumentation(doc="target genome names in a text file")), ToolInput(tag="in_boosting_file", input_type=File(optional=True), prefix="--boosting_file", doc=InputDocumentation(doc="training genome file names in a text file")), ToolInput(tag="in_kmer_size_used", input_type=Int(optional=True), prefix="--k", doc=InputDocumentation(doc="Kmer size used during read recruitment.")), ToolInput(tag="in_copy_number", input_type=Int(optional=True), prefix="--copynumber", doc=InputDocumentation(doc="Copy number for training genome.")), ToolInput(tag="in_primers", input_type=String(optional=True), prefix="--primers", doc=InputDocumentation(doc="Flanking sequences used in coverage adjustments")), ToolInput(tag="in_num_procs", input_type=Int(optional=True), prefix="--num_procs", doc=InputDocumentation(doc="Number of cores for parallel processing."))], outputs=[ToolOutput(tag="out_boost_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_boost_output", type_hint=File()), doc=OutputDocumentation(doc="output file for training data / training data used to\npredict copy numbers for queries"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prince_V0_1_0().translate("wdl", allow_empty_container=True)

