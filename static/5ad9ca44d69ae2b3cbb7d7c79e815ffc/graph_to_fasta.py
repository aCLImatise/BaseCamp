from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Graph_To_Fasta_V0_1_0 = CommandToolBuilder(tool="graph_to_fasta", base_command=["graph-to-fasta"], inputs=[ToolInput(tag="in_arg_json_files", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --graph-spec ] arg    JSON file(s) describing the graph")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output-file ] arg   Output file name. Will output to stdout if '-' or\nneither of output-file or output-folder provided.")), ToolInput(tag="in_arg_output_folder", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="[ --output-folder ] arg Output folder path. paragraph will attempt to\ncreate the folder but not the entire path. Will\noutput to stdout if neither of output-file or\noutput-folder provided. If specified, paragraph\nwill produce one output file for each input file\nbearing the same name.")), ToolInput(tag="in_arg_fasta_reference", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg     FASTA with reference genome")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="(=info)    Set log level (error, warning, info).")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Log to a file instead of stderr.")), ToolInput(tag="in_log_async", input_type=Int(optional=True), prefix="--log-async", doc=InputDocumentation(doc="(=1)       Enable / disable async logging."))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --output-file ] arg   Output file name. Will output to stdout if '-' or\nneither of output-file or output-folder provided."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graph_To_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

