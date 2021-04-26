from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Agat_Sp_Manage_Introns_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_manage_introns.pl", base_command=["agat_sp_manage_introns.pl"], inputs=[ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="-reffile", doc=InputDocumentation(doc="Input GTF/GFF file. You can use several input files by doing: -f\nfile1 -f file2 -f file3")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="It the number of break used within the histogram plot. By\ndefault it's 1000. You can modify the value to get something\nmore or less precise.")), ToolInput(tag="in_modify_x_values", input_type=Int(optional=True), prefix="--p", doc=InputDocumentation(doc="to modify the X values to calculate the percentage of the\nlongest introns to remove. By default the value is 1 (We remove\n1 percent of the longest).")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="--plot", doc=InputDocumentation(doc="Allows to create an histogram in pdf of intron sizes")), ToolInput(tag="in_agat_sp_manage_introns_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_distribution_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--out, --output or -o"))], outputs=[], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Manage_Introns_Pl_V0_1_0().translate("wdl")

