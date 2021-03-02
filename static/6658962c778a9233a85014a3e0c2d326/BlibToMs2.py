from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Blibtoms2_V0_1_0 = CommandToolBuilder(tool="BlibToMs2", base_command=["BlibToMs2"], inputs=[ToolInput(tag="in_arg_name_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --file-name ] arg                Name the output ms2 file.  Default is\n<library name>.ms2.")), ToolInput(tag="in_arg_precision_peak_mz", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --mz-precision ] arg (=2)        Precision for peak m/z printed to ms2.\nDefault 2.")), ToolInput(tag="in_arg_precision_peak_intensitiesdefault", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --intensity-precision ] arg (=1) Precision for peak intensities.\nDefault 1.")), ToolInput(tag="in_arg_status_control", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbosity ] arg (=status)      Control the level of output to stderr.\n(silent, error, status, warn, debug,\ndetail, all)  Default status.")), ToolInput(tag="in_library", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_name_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_name_file", type_hint=File()), doc=OutputDocumentation(doc="[ --file-name ] arg                Name the output ms2 file.  Default is\n<library name>.ms2."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blibtoms2_V0_1_0().translate("wdl", allow_empty_container=True)

