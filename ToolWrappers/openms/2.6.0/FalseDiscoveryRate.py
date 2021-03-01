from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Falsediscoveryrate_V0_1_0 = CommandToolBuilder(tool="FalseDiscoveryRate", base_command=["FalseDiscoveryRate"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*              Identifications from searching a target-decoy database. (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*             Identifications with annotated FDR (valid formats: 'idXML')")), ToolInput(tag="in_psm", input_type=String(optional=True), prefix="-PSM", doc=InputDocumentation(doc="Perform FDR calculation on PSM level (default: 'true' valid: 'true', 'false')")), ToolInput(tag="in_protein", input_type=String(optional=True), prefix="-protein", doc=InputDocumentation(doc="Perform FDR calculation on protein level (default: 'true' valid: 'true', 'false')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falsediscoveryrate_V0_1_0().translate("wdl")

