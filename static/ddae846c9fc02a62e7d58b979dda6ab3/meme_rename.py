from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Meme_Rename_V0_1_0 = CommandToolBuilder(tool="meme_rename", base_command=["meme-rename"], inputs=[ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="<dir>+          full path of MEME Suite program output directory\n[-d <dest>]     destination directory; default: working directory\n[-h]            print this message\nCopy HTML files from MEME Suite programs to files with distinct names to\nmake it easier to share them:\n<dest>/<program>.<last_dir>[.<arg_order_num>].html\nwhere <last_dir> is the last directory on the path, and <program> is the\nname of the MEME Suite program. If the <program>.<last_dir> combination is\nnot unique then a number based on the argument order is added.\n"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meme_Rename_V0_1_0().translate("wdl")

