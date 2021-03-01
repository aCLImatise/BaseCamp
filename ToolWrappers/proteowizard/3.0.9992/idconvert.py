from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Idconvert_V0_1_0 = CommandToolBuilder(tool="idconvert", base_command=["idconvert"], inputs=[ToolInput(tag="in_arg_specify_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --filelist ] arg    : specify text file containing filenames")), ToolInput(tag="in_o", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]")), ToolInput(tag="in_arg_configuration_file", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --config ] arg      : configuration file (optionName=value)")), ToolInput(tag="in_e", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[ --ext ] arg         : set extension for output files [mzid|pepXML|txt]")), ToolInput(tag="in_mz_ident_ml", input_type=Boolean(optional=True), prefix="--mzIdentML", doc=InputDocumentation(doc=": write mzIdentML format [default]")), ToolInput(tag="in_pep_xml", input_type=Boolean(optional=True), prefix="--pepXML", doc=InputDocumentation(doc=": write pepXML format")), ToolInput(tag="in_text", input_type=Boolean(optional=True), prefix="--text", doc=InputDocumentation(doc=": write hierarchical text format")), ToolInput(tag="in_display_detailed_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]         : display detailed progress information")), ToolInput(tag="in_file_masks", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]"))], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idconvert_V0_1_0().translate("wdl")

