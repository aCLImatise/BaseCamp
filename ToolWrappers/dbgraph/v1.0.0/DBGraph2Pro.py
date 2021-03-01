from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Dbgraph2Pro_V0_1_0 = CommandToolBuilder(tool="DBGraph2Pro", base_command=["DBGraph2Pro"], inputs=[ToolInput(tag="in_input_edge_file", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc=": The input edge file name")), ToolInput(tag="in_input_edge_sequence", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": The input edge sequence (contig) file name")), ToolInput(tag="in_base_name_sequences", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="(base name only): Protein Sequences files")), ToolInput(tag="in_minimum_peptide_length", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc=": minimum peptide length to be output (default 6)")), ToolInput(tag="in_maximum_peptide_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=": maximum peptide length to be output (default 50)")), ToolInput(tag="in_minimum_contig_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": minimum contig length to be explored (longer contigs will be executed by FGS)")), ToolInput(tag="in_maximum_sequence_length", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc=": maximum sequence length (for memory allocation, default 3000)")), ToolInput(tag="in_k", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc=": default 31")), ToolInput(tag="in_c", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=": default 0")), ToolInput(tag="in_d", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc=": default 10")), ToolInput(tag="in_soap_when_set", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="(SOAP when set; default off for SOAP2)")), ToolInput(tag="in_fastg_when_set", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="(FastG when set; default off for SOAP2)")), ToolInput(tag="in_fastg_output_set", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="(FastG output by MetaSPaDes when set; default off for SOAP2)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbgraph2Pro_V0_1_0().translate("wdl", allow_empty_container=True)

