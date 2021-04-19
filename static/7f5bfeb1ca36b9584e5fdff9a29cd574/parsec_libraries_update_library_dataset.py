from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Libraries_Update_Library_Dataset_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_update_library_dataset", base_command=["parsec", "libraries", "update_library_dataset"], inputs=[ToolInput(tag="in_file_ext", input_type=String(optional=True), prefix="--file_ext", doc=InputDocumentation(doc="Replace library dataset extension (must exist in the\nGalaxy registry)")), ToolInput(tag="in_genome_build", input_type=String(optional=True), prefix="--genome_build", doc=InputDocumentation(doc="Replace library dataset genome build (dbkey)")), ToolInput(tag="in_misc_info", input_type=String(optional=True), prefix="--misc_info", doc=InputDocumentation(doc="Replace library dataset misc_info with given string")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Replace library dataset name with the given string")), ToolInput(tag="in_tags", input_type=String(optional=True), prefix="--tags", doc=InputDocumentation(doc="Replace library dataset tags with the given list")), ToolInput(tag="in_dataset_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Update_Library_Dataset_V0_1_0().translate("wdl")

