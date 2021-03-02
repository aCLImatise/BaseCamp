from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bioconda2Biocontainer_V0_1_0 = CommandToolBuilder(tool="bioconda2biocontainer", base_command=["bioconda2biocontainer"], inputs=[ToolInput(tag="in_package_name", input_type=String(optional=True), prefix="--package_name", doc=InputDocumentation(doc="Bioconda package name")), ToolInput(tag="in_package_version", input_type=String(optional=True), prefix="--package_version", doc=InputDocumentation(doc="Bioconda package version")), ToolInput(tag="in_container_type", input_type=String(optional=True), prefix="--container_type", doc=InputDocumentation(doc="Container type. Default: Docker. Values: Docker,\nConda, Singularity")), ToolInput(tag="in_registry_host", input_type=String(optional=True), prefix="--registry_host", doc=InputDocumentation(doc="Registry host. Default: quay.io.Values:")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="--json", doc=InputDocumentation(doc="Print json format")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Print all images")), ToolInput(tag="in_sort_by_size", input_type=Boolean(optional=True), prefix="--sort_by_size", doc=InputDocumentation(doc="Sort by size instead of by date")), ToolInput(tag="in_sort_by_download", input_type=Boolean(optional=True), prefix="--sort_by_download", doc=InputDocumentation(doc="Sort by number of downloads instead of by date")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bioconda2biocontainer:0.0.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconda2Biocontainer_V0_1_0().translate("wdl")

