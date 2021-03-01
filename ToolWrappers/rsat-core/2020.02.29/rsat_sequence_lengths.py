from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Rsat_Sequence_Lengths_V0_1_0 = CommandToolBuilder(tool="rsat_sequence_lengths", base_command=["rsat", "sequence-lengths"], inputs=[ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="-help", doc=InputDocumentation(doc="(must be first argument) display options")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_specified_standard_input", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="if not specified, the standard input is used.\nThis allows to place the command within a pipe.")), ToolInput(tag="in_unit", input_type=String(optional=True), prefix="-unit", doc=InputDocumentation(doc="|kb|mb|gb\nUnits for sequence lengths.\nSupported units:\nbp        base pairs\nkb        kilobases\nmb        megabases\ngb        gigabases")), ToolInput(tag="in_in_format", input_type=Boolean(optional=True), prefix="-in_format", doc=InputDocumentation(doc="input format\nThe input file can contain either sequences or genomic\ncoordinates (-in_format bed).\nFor a list of supported input sequences, type\nconvert-seq -help")), ToolInput(tag="in_specified_standard_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="If not specified, the standard output is used.\nThis allows to place the command within a pipe.")), ToolInput(tag="in_sum", input_type=Boolean(optional=True), prefix="-sum", doc=InputDocumentation(doc="only return sum of sequene lengths")), ToolInput(tag="in_sequence_lengths", input_type=String(), position=0, doc=InputDocumentation(doc="1999 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="USAGE"))], outputs=[ToolOutput(tag="out_specified_standard_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specified_standard_output", type_hint=File()), doc=OutputDocumentation(doc="If not specified, the standard output is used.\nThis allows to place the command within a pipe."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Sequence_Lengths_V0_1_0().translate("wdl", allow_empty_container=True)

