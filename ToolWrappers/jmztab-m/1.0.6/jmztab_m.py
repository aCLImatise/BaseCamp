from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Jmztab_M_V0_1_0 = CommandToolBuilder(tool="jmztab_m", base_command=["jmztab-m"], inputs=[ToolInput(tag="in_from_json", input_type=Boolean(optional=True), prefix="--fromJson", doc=InputDocumentation(doc="Example: --fromJson. Will parse inFile as JSON\nand write mzTab representation to disk.\nRequires validation to be successful!")), ToolInput(tag="in_level", input_type=String(optional=True), prefix="--level", doc=InputDocumentation(doc="Choose validation level (Info, Warn, Error),\ndefault level is Info!")), ToolInput(tag="in_message", input_type=Boolean(optional=True), prefix="--message", doc=InputDocumentation(doc="Example: -m 1002. Print validation message\ndetail information based on error code.")), ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outFile", doc=InputDocumentation(doc="Example: -o 'output.txt'. Record validation\nmessages into outfile. If not set, print\nvalidation messages to stdout/stderr.")), ToolInput(tag="in_check_semantic", input_type=File(optional=True), prefix="--checkSemantic", doc=InputDocumentation(doc="Example: -s /path/to/mappingFile.xml. Use the\nprovided mapping file for semantic validation.\nIf no mapping file is provided, the default\none will be used. Requires an active internet\nconnection!")), ToolInput(tag="in_to_json", input_type=Boolean(optional=True), prefix="--toJson", doc=InputDocumentation(doc="Example: --toJson. Will write a json\nrepresentation of inFile to disk. Requires\nvalidation to be successful!")), ToolInput(tag="in_jm_z_tab_m_cli", input_type=String(), position=0, doc=InputDocumentation(doc="-c,--check <arg>           Example: -c /path/to/file.mztab. Check and\nvalidate the provided a mzTab file."))], outputs=[], container="quay.io/biocontainers/jmztab-m:1.0.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jmztab_M_V0_1_0().translate("wdl")

