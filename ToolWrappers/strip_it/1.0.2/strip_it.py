from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Strip_It_V0_1_0 = CommandToolBuilder(tool="strip_it", base_command=["strip-it"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Specifies the file containing the input molecules. The format of the\nfile is specified by its file extension or by the --inputFormat option.\nGzipped files are also read.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specifies the file to which the extracted scaffolds are written.\nThe file is a text file with on each row the original molecule\nand the generated scaffolds in SMILES format. If this option is\nnot provided, then all scaffolds are written to standard output.")), ToolInput(tag="in_input_format", input_type=File(optional=True), prefix="--inputFormat", doc=InputDocumentation(doc="Specifies the input file format. If not provided then the format\nis determined from the file extension.")), ToolInput(tag="in_scaffolds", input_type=File(optional=True), prefix="--scaffolds", doc=InputDocumentation(doc="Specifies the file in which the required scaffolds have been defined.\nIf not provided then all scaffolds are calculated.")), ToolInput(tag="in_no_log", input_type=Boolean(optional=True), prefix="--noLog", doc=InputDocumentation(doc="Suppresses the output of additional information to standard error.")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="--noHeader", doc=InputDocumentation(doc="Suppresses the header line in the output."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Specifies the file to which the extracted scaffolds are written.\nThe file is a text file with on each row the original molecule\nand the generated scaffolds in SMILES format. If this option is\nnot provided, then all scaffolds are written to standard output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strip_It_V0_1_0().translate("wdl", allow_empty_container=True)

