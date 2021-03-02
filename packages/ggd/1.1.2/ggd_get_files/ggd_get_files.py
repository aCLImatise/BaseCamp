from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ggd_Get_Files_V0_1_0 = CommandToolBuilder(tool="ggd_get_files", base_command=["ggd", "get-files"], inputs=[ToolInput(tag="in_channel", input_type=String(optional=True), prefix="--channel", doc=InputDocumentation(doc="The ggd channel of the recipe to find. (Default =\ngenomics)")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="(Optional) species recipe is for. Use '*' for any\nspecies")), ToolInput(tag="in_genome_build", input_type=String(optional=True), prefix="--genome-build", doc=InputDocumentation(doc="(Optional) genome build the recipe is for. Use '*' for\nany genome build.")), ToolInput(tag="in_pattern", input_type=File(optional=True), prefix="--pattern", doc=InputDocumentation(doc="(Optional) pattern to match the name of the file\ndesired. To list all files for a ggd package, do not\nuse the -p option")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="(Optional) The name or the full directory path to an\nconda environment where a ggd recipe is stored. (Only\nneeded if not getting file paths for files in the\ncurrent conda environment)\n"))], outputs=[], container="quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_Get_Files_V0_1_0().translate("wdl")

