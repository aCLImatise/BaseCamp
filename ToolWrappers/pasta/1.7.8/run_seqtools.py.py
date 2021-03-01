from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Run_Seqtools_Py_V0_1_0 = CommandToolBuilder(tool="run_seqtools.py", base_command=["run_seqtools.py"], inputs=[ToolInput(tag="in_in_file", input_type=Boolean(optional=True), prefix="-infile", doc=InputDocumentation(doc="[INFILE]      name of the input file (default: standard input)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="[OUTFILE]    name of the output file (default: standard output)")), ToolInput(tag="in_in_format", input_type=Boolean(optional=True), prefix="-informat", doc=InputDocumentation(doc="[{COMPACT3,FASTA}]\nformat of the input file (default: FASTA)")), ToolInput(tag="in_out_format", input_type=File(optional=True), prefix="-outformat", doc=InputDocumentation(doc="[{COMPACT3,FASTA,PHYLIP}]\nformat of the output file (default: FASTA)")), ToolInput(tag="in_mask_sites", input_type=String(optional=True), prefix="-masksites", doc=InputDocumentation(doc="sites with less than N non-gap characters will be\nmasked out")), ToolInput(tag="in_filter_fragments", input_type=String(optional=True), prefix="-filterfragments", doc=InputDocumentation(doc="sequences with less than N non-gap sequences will be")), ToolInput(tag="in_removed", input_type=String(), position=0, doc=InputDocumentation(doc="-rename MappingFile   Rename sequences, according to the mapping file"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="[OUTFILE]    name of the output file (default: standard output)")), ToolOutput(tag="out_out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_format", type_hint=File()), doc=OutputDocumentation(doc="[{COMPACT3,FASTA,PHYLIP}]\nformat of the output file (default: FASTA)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Seqtools_Py_V0_1_0().translate("wdl", allow_empty_container=True)

