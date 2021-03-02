from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, String

Gnuvid_Predict_Py_V0_1_0 = CommandToolBuilder(tool="GNUVID_Predict.py", base_command=["GNUVID_Predict.py"], inputs=[ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--output_folder", doc=InputDocumentation(doc="Output folder and prefix to be created for results\n(default: timestamped GNUVID_results in the current\ndirectory)")), ToolInput(tag="in_individual", input_type=File(optional=True), prefix="--individual", doc=InputDocumentation(doc="Individual Output file for each genome showing the\nallele sequence and GNU score for each gene allele")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwriting existing results folder assigned\nwith -o (default: off)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="No screen output [default OFF]")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_query_fna", input_type=String(), position=0, doc=InputDocumentation(doc="Query Whole Genome Nucleotide FASTA file to analyze\n(.fna)"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Output folder and prefix to be created for results\n(default: timestamped GNUVID_results in the current\ndirectory)")), ToolOutput(tag="out_individual", output_type=File(optional=True), selector=InputSelector(input_to_select="in_individual", type_hint=File()), doc=OutputDocumentation(doc="Individual Output file for each genome showing the\nallele sequence and GNU score for each gene allele"))], container="quay.io/biocontainers/gnuvid:2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnuvid_Predict_Py_V0_1_0().translate("wdl")

