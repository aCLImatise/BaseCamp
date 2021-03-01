from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Qtofpeakpicker_V0_1_0 = CommandToolBuilder(tool="qtofpeakpicker", base_command=["qtofpeakpicker"], inputs=[ToolInput(tag="in_produce_help_message", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="[ --help ]               produce help message")), ToolInput(tag="in_produces_version_information", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="[ --version ]            produces version information")), ToolInput(tag="in_arg_input_file", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="[ --in ] arg             input file")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="[ --out ] arg            output file")), ToolInput(tag="in_arg_configuration_file", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="[ --config-file ] arg    configuration file")), ToolInput(tag="in_resolution", input_type=Int(optional=True), prefix="--resolution", doc=InputDocumentation(doc="(=20000)   instrument resolution.")), ToolInput(tag="in_area", input_type=Int(optional=True), prefix="--area", doc=InputDocumentation(doc="(=1)             default area, otherwise store intensity (0).")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="(=10)       removes peaks less than threshold times smallest\nintensity in spectrum")), ToolInput(tag="in_number_of_peaks", input_type=Int(optional=True), prefix="--numberofpeaks", doc=InputDocumentation(doc="(=0)    maximum number of peaks per spectrum (0 = no\nlimit)")), ToolInput(tag="in_arg_peak_apex", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --widthint ] arg (=2)  peak apex +- integration width")), ToolInput(tag="in_smooth_width", input_type=Int(optional=True), prefix="--smoothwidth", doc=InputDocumentation(doc="(=1)      smoothing width"))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --out ] arg            output file"))], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qtofpeakpicker_V0_1_0().translate("wdl")

