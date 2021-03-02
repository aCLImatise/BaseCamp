from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Map_Back_V0_1_0 = CommandToolBuilder(tool="map_back", base_command=["map_back"], inputs=[ToolInput(tag="in_arg_seer_kmer", input_type=File(optional=True), prefix="-k", doc=InputDocumentation(doc="[ --kmers ] arg       seer kmer output file")), ToolInput(tag="in_arg_file_tab", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --references ] arg  file with tab separated reference name and fasta")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="(=1)       number of threads. Suggested: 8")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Other options:"))], outputs=[ToolOutput(tag="out_arg_seer_kmer", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_seer_kmer", type_hint=File()), doc=OutputDocumentation(doc="[ --kmers ] arg       seer kmer output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_Back_V0_1_0().translate("wdl", allow_empty_container=True)

