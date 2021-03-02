from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, String

Refseq_Masher_Matches_V0_1_0 = CommandToolBuilder(tool="refseq_masher_matches", base_command=["refseq_masher", "matches"], inputs=[ToolInput(tag="in_mash_bin", input_type=File(optional=True), prefix="--mash-bin", doc=InputDocumentation(doc="Mash binary path (default='mash')")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file path (default='-'/stdout)")), ToolInput(tag="in_output_type", input_type=File(optional=True), prefix="--output-type", doc=InputDocumentation(doc="[tab|csv]         Output file type (tab|csv)")), ToolInput(tag="in_top_n_results", input_type=Int(optional=True), prefix="--top-n-results", doc=InputDocumentation(doc="Output top N results sorted by distance in\nascending order (default=5)")), ToolInput(tag="in_min_km_er_threshold", input_type=Int(optional=True), prefix="--min-kmer-threshold", doc=InputDocumentation(doc="Mash sketch of reads: 'Minimum copies of\neach k-mer required to pass noise filter for\nreads' (default=8)")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp-dir", doc=InputDocumentation(doc="Temporary analysis files path (where to save\ntemp Mash sketch file) (default='/tmp')")), ToolInput(tag="in_input_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file path (default='-'/stdout)")), ToolOutput(tag="out_output_type", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_type", type_hint=File()), doc=OutputDocumentation(doc="[tab|csv]         Output file type (tab|csv)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refseq_Masher_Matches_V0_1_0().translate("wdl", allow_empty_container=True)

