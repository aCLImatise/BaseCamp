from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Easydev_Buildpackage_V0_1_0 = CommandToolBuilder(tool="easydev_buildPackage", base_command=["easydev_buildPackage"], inputs=[ToolInput(tag="in_pkgname", input_type=String(optional=True), prefix="--pkgname", doc=InputDocumentation(doc="Name of the package to be created")), ToolInput(tag="in_package", input_type=String(optional=True), prefix="--package", doc=InputDocumentation(doc="Name of the package to be created")), ToolInput(tag="in_namespace", input_type=String(optional=True), prefix="--namespace", doc=InputDocumentation(doc="If provided, creates a namespace.")), ToolInput(tag="in_no_share_directory", input_type=Boolean(optional=True), prefix="--no-share-directory", doc=InputDocumentation(doc="if five, the share directory is not created")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="set verbosity to INFO, WARNING or ERROR\n")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easydev_Buildpackage_V0_1_0().translate("wdl", allow_empty_container=True)

