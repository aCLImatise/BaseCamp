from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Runsrca_Pl_V0_1_0 = CommandToolBuilder(tool="runSRCA.pl", base_command=["runSRCA.pl"], inputs=[ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="Assembly script (assemble.sh)")), ToolInput(tag="in_generate", input_type=Boolean(optional=True), prefix="--generate", doc=InputDocumentation(doc="Generate example configuration file")), ToolInput(tag="in_path", input_type=Boolean(optional=True), prefix="--path", doc=InputDocumentation(doc="Prepend to PATH in assembly script")), ToolInput(tag="in_ld_library_path", input_type=Boolean(optional=True), prefix="--ld-library-path", doc=InputDocumentation(doc="Prepend to LD_LIBRARY_PATH in assembly script")), ToolInput(tag="in_skip_checking", input_type=Boolean(optional=True), prefix="--skip-checking", doc=InputDocumentation(doc="Skip checking availability of other executables"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runsrca_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

