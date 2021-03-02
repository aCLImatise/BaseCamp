from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Xmlvalidator_V0_1_0 = CommandToolBuilder(tool="XMLValidator", base_command=["XMLValidator"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        File to validate (valid formats: 'mzML', 'mzData', 'featureXML', 'mzid', 'idXML', 'consensusXML', 'mzXML', 'ini', 'pepXML', 'traML', 'xml')")), ToolInput(tag="in_schema", input_type=File(optional=True), prefix="-schema", doc=InputDocumentation(doc="Schema to validate against.\nIf no schema is given, the file is validated against the latest schema of the file type. (valid formats: 'xsd')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xmlvalidator_V0_1_0().translate("wdl")

