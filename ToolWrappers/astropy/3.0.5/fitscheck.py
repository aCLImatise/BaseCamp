from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fitscheck_V0_1_0 = CommandToolBuilder(tool="fitscheck", base_command=["fitscheck"], inputs=[ToolInput(tag="in_choose_fits_mode", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[standard | remove | none], --checksum=[standard | remove | none]\nChoose FITS checksum mode or none.  Defaults standard.")), ToolInput(tag="in_write", input_type=File(optional=True), prefix="--write", doc=InputDocumentation(doc="Write out file checksums and/or FITS compliance fixes.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Do file update even if original checksum was bad.")), ToolInput(tag="in_compliance", input_type=Boolean(optional=True), prefix="--compliance", doc=InputDocumentation(doc="Do FITS compliance checking; fix if possible.")), ToolInput(tag="in_ignore_missing", input_type=Boolean(optional=True), prefix="--ignore-missing", doc=InputDocumentation(doc="Ignore missing checksums.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Generate extra output."))], outputs=[ToolOutput(tag="out_write", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write", type_hint=File()), doc=OutputDocumentation(doc="Write out file checksums and/or FITS compliance fixes."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fitscheck_V0_1_0().translate("wdl", allow_empty_container=True)

