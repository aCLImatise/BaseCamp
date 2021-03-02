from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Blibfilter_V0_1_0 = CommandToolBuilder(tool="BlibFilter", base_command=["BlibFilter"], inputs=[ToolInput(tag="in_arg_sqlite_memory", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --memory-cache ] arg (=250)  SQLite memory cache size in Megs.  Default")), ToolInput(tag="in_arg_best_spectrum", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --min-score ] arg (=0)       Best spectrum must have at least this\naverage score to be included.  Default 0.")), ToolInput(tag="in_arg_description_option", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --best-scoring ] arg (=0)    Description of option.  Default false.")), ToolInput(tag="in_arg_file_containing", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --parameter-file ] arg       File containing search parameters.  Command\nline values override file values.")), ToolInput(tag="in_arg_status_control", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbosity ] arg (=status)  Control the level of output to stderr.\n(silent, error, status, warn, debug,\ndetail, all)  Default status.")), ToolInput(tag="in_two_five_zero_mdot", input_type=Int(), position=0, doc=InputDocumentation(doc="-n [ --min-peaks ] arg (=1)       Only include spectra with at least this "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blibfilter_V0_1_0().translate("wdl", allow_empty_container=True)

