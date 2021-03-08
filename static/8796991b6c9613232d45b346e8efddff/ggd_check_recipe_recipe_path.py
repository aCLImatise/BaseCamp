from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Ggd_Check_Recipe_Recipe_Path_V0_1_0 = CommandToolBuilder(tool="ggd_check_recipe_recipe_path", base_command=["ggd", "check-recipe", "recipe_path"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="(Optional) Set the stdout log level to debug")), ToolInput(tag="in_dont_uninstall", input_type=Boolean(optional=True), prefix="--dont_uninstall", doc=InputDocumentation(doc="(Optional) By default the newly installed local ggd\ndata package is uninstalled after the check has\nfinished. To bypass this uninstall step (to keep the\nlocal package installed) set this flag '--\ndont_uninstall'")), ToolInput(tag="in_id", input_type=Int(optional=True), prefix="--id", doc=InputDocumentation(doc="ID   If checking a meta-recipe the associated meta-recipe\nid needs to be supplied. (Example: for a geo meta-\nrecipe use something like --id GSE123) NOTE: GGD does\nnot try to correct the ID. Please provide the correct\ncase sensitive ID.\n")), ToolInput(tag="in_recipe_path", input_type=String(), position=0, doc=InputDocumentation(doc="path to recipe directory (can also be path to the\n.bz2)"))], outputs=[], container="quay.io/biocontainers/ggd:1.1.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_Check_Recipe_Recipe_Path_V0_1_0().translate("wdl")

