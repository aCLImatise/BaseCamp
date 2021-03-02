from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Float, Int

Blast_Align_Sh_V0_1_0 = CommandToolBuilder(tool="blast_align.sh", base_command=["blast_align.sh"], inputs=[ToolInput(tag="in_file_fasta_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file in FASTA format")), ToolInput(tag="in_to_blast_against", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="to blast against")), ToolInput(tag="in_directory_default_same", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory, default same directory as query")), ToolInput(tag="in_blast_identification_mandatory", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="for blast identification (mandatory) and output file name")), ToolInput(tag="in_query_nucl_default", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="of query, nucl by default")), ToolInput(tag="in_database_nucl_default", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="of database, nucl by default")), ToolInput(tag="in_blast_analysis_default", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc="for blast analysis, default 0.0001")), ToolInput(tag="in_of_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="of threads")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[ToolOutput(tag="out_blast_identification_mandatory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_blast_identification_mandatory", type_hint=File()), doc=OutputDocumentation(doc="for blast identification (mandatory) and output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blast_Align_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

