from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Planemo_Brew_Env_V0_1_0 = CommandToolBuilder(tool="planemo_brew_env", base_command=["planemo", "brew_env"], inputs=[ToolInput(tag="in_brew", input_type=File(optional=True), prefix="--brew", doc=InputDocumentation(doc="Homebrew 'brew' executable to use.")), ToolInput(tag="in_skip_install", input_type=Boolean(optional=True), prefix="--skip_install", doc=InputDocumentation(doc="Skip installation - only source requirements already")), ToolInput(tag="in_dependencies_dot", input_type=String(), position=0, doc=InputDocumentation(doc="% . <(planemo brew_env bowtie2.xml)\n% which bowtie2\n/home/john/.linuxbrew/Cellar/bowtie2/2.1.0/bin/bowtie2"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Brew_Env_V0_1_0().translate("wdl", allow_empty_container=True)

