from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Rnpxlxicfilter_V0_1_0 = CommandToolBuilder(tool="RNPxlXICFilter", base_command=["RNPxlXICFilter"], inputs=[ToolInput(tag="in_control", input_type=File(optional=True), prefix="-control", doc=InputDocumentation(doc="*    Input mzML file (valid formats: 'mzML')")), ToolInput(tag="in_treatment", input_type=File(optional=True), prefix="-treatment", doc=InputDocumentation(doc="*  Input mzML file (valid formats: 'mzML')")), ToolInput(tag="in_fold_change", input_type=Boolean(optional=True), prefix="-fold_change", doc=InputDocumentation(doc="Fold change between XICs (default: '2.0')")), ToolInput(tag="in_rt_to_l", input_type=Boolean(optional=True), prefix="-rt_tol", doc=InputDocumentation(doc="RT tolerance in [s] for finding max peak (whole RT range around RT middle) (default: '20.0')")), ToolInput(tag="in_mz_to_l", input_type=Boolean(optional=True), prefix="-mz_tol", doc=InputDocumentation(doc="M/z tolerance in [ppm] for finding a peak (default: '10.0')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*        Output of the treatment file after XIC filtering. (valid formats: 'mzML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*        Output of the treatment file after XIC filtering. (valid formats: 'mzML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnpxlxicfilter_V0_1_0().translate("wdl", allow_empty_container=True)

