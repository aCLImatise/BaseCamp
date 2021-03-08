from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Ggd_Install_V0_1_0 = CommandToolBuilder(tool="ggd_install", base_command=["ggd", "install"], inputs=[ToolInput(tag="in_channel", input_type=String(optional=True), prefix="--channel", doc=InputDocumentation(doc="The ggd channel the desired recipe is stored in.\n(Default = genomics)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="(Optional) When the -d flag is set debug output will\nbe printed to stdout.")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="A file with a list of ggd data packages to install.\nOne package per line. Can use more than one (e.g. ggd\ninstall --file <file_1> --file <file_2> )")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="(Optional) The name or the full directory path to an\nexisting conda environment where you want to install a\nggd data package. (Only needed if you want to install\nthe data package into a different conda environment\nthen the one you are currently in)")), ToolInput(tag="in_id", input_type=Int(optional=True), prefix="--id", doc=InputDocumentation(doc="ID   The ID to use for the meta recipe being installed. For\nexample, if installing the GEO meta-recipe for GEO\nAccession ID GSE123, use `--id GSE123` NOTE: GGD will\nNOT try to correct the ID. The ID must be accurately\nentered with case sensitive alphanumeric order\n")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="The data package name to install. Can use more than\nonce (e.g. ggd install <pkg 1> <pkg 2> <pkg 3> ).\n(NOTE: No need to designate version as it is\nimplicated in the package name)"))], outputs=[], container="quay.io/biocontainers/ggd:1.1.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_Install_V0_1_0().translate("wdl")

