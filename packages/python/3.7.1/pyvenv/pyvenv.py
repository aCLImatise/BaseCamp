from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pyvenv_V0_1_0 = CommandToolBuilder(tool="pyvenv", base_command=["pyvenv"], inputs=[ToolInput(tag="in_system_site_packages", input_type=Boolean(optional=True), prefix="--system-site-packages", doc=InputDocumentation(doc="Give the virtual environment access to the system\nsite-packages dir.")), ToolInput(tag="in_symlinks", input_type=Boolean(optional=True), prefix="--symlinks", doc=InputDocumentation(doc="Try to use symlinks rather than copies, when symlinks\nare not the default for the platform.")), ToolInput(tag="in_copies", input_type=Boolean(optional=True), prefix="--copies", doc=InputDocumentation(doc="Try to use copies rather than symlinks, even when\nsymlinks are the default for the platform.")), ToolInput(tag="in_clear", input_type=Boolean(optional=True), prefix="--clear", doc=InputDocumentation(doc="Delete the contents of the environment directory if it\nalready exists, before environment creation.")), ToolInput(tag="in_upgrade", input_type=Boolean(optional=True), prefix="--upgrade", doc=InputDocumentation(doc="Upgrade the environment directory to use this version\nof Python, assuming Python has been upgraded in-place.")), ToolInput(tag="in_without_pip", input_type=Boolean(optional=True), prefix="--without-pip", doc=InputDocumentation(doc="Skips installing or upgrading pip in the virtual\nenvironment (pip is bootstrapped by default)")), ToolInput(tag="in_prompt", input_type=String(optional=True), prefix="--prompt", doc=InputDocumentation(doc="Provides an alternative prompt prefix for this")), ToolInput(tag="in_env_dir", input_type=String(), position=0, doc=InputDocumentation(doc="A directory to create the environment in.")), ToolInput(tag="in_environment_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Once an environment has been created, you may wish to activate it, e.g. by"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyvenv_V0_1_0().translate("wdl", allow_empty_container=True)

