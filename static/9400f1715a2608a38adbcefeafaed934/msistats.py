from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Msistats_V0_1_0 = CommandToolBuilder(tool="msistats", base_command=["msistats"], inputs=[ToolInput(tag="in_arg_windows_use", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --mz ] arg (=5)    : Windows to use for finding nearest time neighbor.")), ToolInput(tag="in_arg_window_use", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --time ] arg (=10) : Window to use for finding nearest mz neighbors")), ToolInput(tag="in_arg_name_write", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --out ] arg        : Name of file to write output to.")), ToolInput(tag="in__be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]        : Be verbose.")), ToolInput(tag="in_pm_z", input_type=String(optional=True), prefix="--pmz", doc=InputDocumentation(doc=": width for empty pixel analysis. Otherwise set to mz\noption value")), ToolInput(tag="in_p_time", input_type=String(optional=True), prefix="--ptime", doc=InputDocumentation(doc=": width for empty pixel analysis. Otherwise set to time\noption value\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_name_write", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_name_write", type_hint=File()), doc=OutputDocumentation(doc="[ --out ] arg        : Name of file to write output to."))], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msistats_V0_1_0().translate("wdl")

