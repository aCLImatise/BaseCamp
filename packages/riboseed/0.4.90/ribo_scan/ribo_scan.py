from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Float, File, Int

Ribo_Scan_V0_1_0 = CommandToolBuilder(tool="ribo_scan", base_command=["ribo", "scan"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory; default: /")), ToolInput(tag="in_kingdom", input_type=String(optional=True), prefix="--kingdom", doc=InputDocumentation(doc="whether to look for eukaryotic, archaeal, or bacterial\nrDNA; default: bac")), ToolInput(tag="in_id_thresh", input_type=Float(optional=True), prefix="--id_thresh", doc=InputDocumentation(doc="partial rRNA hits below this threshold will be\nignored. default: 0.5")), ToolInput(tag="in_barr_nap_exe", input_type=File(optional=True), prefix="--barrnap_exe", doc=InputDocumentation(doc="path to barrnap executable; default: barrnap")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="name to give the contig files; default: infered from")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min_length", doc=InputDocumentation(doc="skip the scaffold if its shorter than this default: 0")), ToolInput(tag="in_verbosity", input_type=File(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-c CORES, --cores CORES"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory; default: /")), ToolOutput(tag="out_verbosity", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbosity", type_hint=File()), doc=OutputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Scan_V0_1_0().translate("wdl", allow_empty_container=True)

