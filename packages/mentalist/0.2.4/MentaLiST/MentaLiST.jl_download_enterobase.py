from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, String

Mentalist_Jl_Download_Enterobase_V0_1_0 = CommandToolBuilder(tool="MentaLiST.jl_download_enterobase", base_command=["MentaLiST.jl", "download_enterobase"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Output file (kmer database)")), ToolInput(tag="in_kmer_size_type", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Kmer size (type: Int8)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads used in parallel. (type:\nInt64, default: 2)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output folder for the scheme Fasta files.")), ToolInput(tag="in_scheme", input_type=String(optional=True), prefix="--scheme", doc=InputDocumentation(doc="Letter identifying which scheme: (S)almonella,\n(Y)ersinia, or (E)scherichia/Shigella.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Choose the type: 'cg' or 'wg' for cgMLST or\nwgMLST scheme, respectively."))], outputs=[ToolOutput(tag="out_db", output_type=File(optional=True), selector=InputSelector(input_to_select="in_db", type_hint=File()), doc=OutputDocumentation(doc="Output file (kmer database)")), ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output folder for the scheme Fasta files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mentalist_Jl_Download_Enterobase_V0_1_0().translate("wdl", allow_empty_container=True)

