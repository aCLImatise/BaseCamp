from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gene2Xml_V0_1_0 = CommandToolBuilder(tool="gene2xml", base_command=["gene2xml"], inputs=[ToolInput(tag="in_path_files_optional", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Path to Files [String]  Optional")), ToolInput(tag="in_path_results_optional", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Path for Results [String]  Optional")), ToolInput(tag="in_single_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Single Input File [File In]  Optional\ndefault = stdin")), ToolInput(tag="in_single_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Single Output File [File Out]  Optional\ndefault = stdout")), ToolInput(tag="in_file_binary_optionaldefault", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="File is Binary [T/F]  Optional\ndefault = F")), ToolInput(tag="in_file_compressed_optionaldefault", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="File is Compressed [T/F]  Optional\ndefault = F")), ToolInput(tag="in_taxon_id_optionaldefault", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Taxon ID to Filter [Integer]  Optional\ndefault = 0")), ToolInput(tag="in_extract_text_optionaldefault", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Extract .ags -> text .agc [T/F]  Optional\ndefault = F")), ToolInput(tag="in_combine_text_testing", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="Combine .agc -> text .ags (for testing) [T/F]  Optional\ndefault = F")), ToolInput(tag="in_combine_binary_then", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="Combine .agc -> binary .ags, then gzip [T/F]  Optional\ndefault = F")), ToolInput(tag="in_log_processing_optionaldefault", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Log Processing [T/F]  Optional\ndefault = F\n"))], outputs=[ToolOutput(tag="out_single_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_single_output_file", type_hint=File()), doc=OutputDocumentation(doc="Single Output File [File Out]  Optional\ndefault = stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gene2Xml_V0_1_0().translate("wdl", allow_empty_container=True)

