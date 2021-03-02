from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean

Rnazrandomizealn_Pl_V0_1_0 = CommandToolBuilder(tool="rnazRandomizeAln.pl", base_command=["rnazRandomizeAln.pl"], inputs=[ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Long alignment blocks should be shuffled locally in order to\nmaintain local characteristics of the alignment. Therefore\nalignments can be shuffled in windows. You can specify here the\nsize of a window and the offset. Defaults are window=120 and\nslide=120, i.e. the alignments are shuffled in non-overlapping\nwindows of 120 columns.")), ToolInput(tag="in_level", input_type=Float(optional=True), prefix="--level", doc=InputDocumentation(doc="The shuffling algorithm tries to mantain local conservation\npatterns, i.e. it shuffles only columns of the same degree of\nconservation. This becomes limiting if you have many sequences\nin your alignment. Therfore you can choose the level of ``coarse\ngraining' with this option.\nTo decide which columns have the same degree of conservation,\nthe mean pairwise identity (MPI) of each column is calculated\nand finally only columns of the same value are shuffled. You can\nadjust the rounding of the MPI and thus the ``coarse graining'\nlevel with this option. If you have two columns with say 0.52\nand 0.48 MPI you get:\nlevel 0: 1 and 0\nlevel 1: 50 and 50\nlevel 2: 52 and 48\nSo on level 0 you only have ``conserved' (MPI > 0.5) and\n``non-conserved' (MPI < 0.5) columns while on level 2 you need\nalmost exactly the same MPI to shuffle two columns.\nDefault value is 2.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazrandomizealn_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

