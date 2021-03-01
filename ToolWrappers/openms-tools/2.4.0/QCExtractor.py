from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Qcextractor_V0_1_0 = CommandToolBuilder(tool="QCExtractor", base_command=["QCExtractor"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input qcml file (valid formats: 'qcML')")), ToolInput(tag="in_qp", input_type=String(optional=True), prefix="-qp", doc=InputDocumentation(doc="*      Target attachment qp.")), ToolInput(tag="in_run", input_type=File(optional=True), prefix="-run", doc=InputDocumentation(doc="The file that defined the run under which the qp for the attachment is aggregated as mzML file. The file is only used to extract the run name from the file name. (valid formats: 'mzML')")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="-name", doc=InputDocumentation(doc="If no file for the run was given (or if the target qp is contained in a set), at least a name of the target run/set containing the the qp for the attachment has to be given.")), ToolInput(tag="in_out_csv", input_type=File(optional=True), prefix="-out_csv", doc=InputDocumentation(doc="*   Output csv formatted table. (valid formats: 'csv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qcextractor_V0_1_0().translate("wdl", allow_empty_container=True)

