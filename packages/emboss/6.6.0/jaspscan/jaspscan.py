from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Jaspscan_V0_1_0 = CommandToolBuilder(tool="jaspscan", base_command=["jaspscan"], inputs=[ToolInput(tag="in_menu", input_type=Boolean(optional=True), prefix="-menu", doc=InputDocumentation(doc="menu       [C] Matrix set (Values: C (Core); F (Fam); P\n(Phylofacts); N (CNE); O (POLII); S\n(SPLICE); B (PBM); L (PBM_HLH); H\n(PBM_HOMEO))")), ToolInput(tag="in_matrices", input_type=Boolean(optional=True), prefix="-matrices", doc=InputDocumentation(doc="string     [all] The name 'all' reads in all matrix\nfiles from the selected\nJASPAR matrix set. You can specify\nindividual matrices by giving\ntheir names with commas between then, such\nas:\n'ma0001.1,ma0015*'.\nThe case of the names is not important. You\ncan specify a file of\nmatrix names to read in by giving the name\nof the file holding the\nmatrix names with a '@' character in front\nof it, for example,\n'@matrix.list'.\nBlank lines and lines starting with a hash\ncharacter or '!' are ignored and all other\nlines are concatenated together with a comma\ncharacter ',' and then treated as the list\nof enzymes to search\nfor.\nAn example of a file of matrix names is:\n! my matrices\nma0001.1, ma0002.1\n! other matrices\nma0010.1\nma0032*\nma0053.1 (Any string)")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="float      [80.0] If the matrix score is greater than\nor equal to this percentage\nthen a hit will be reported (Any numeric\nvalue)")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="-exclude", doc=InputDocumentation(doc="string     The names of any matrices to exclude from\nthe 'matrices'\nlist. Matrices are specified in the same way\nas for the\nselection list. (Any string)")), ToolInput(tag="in_both", input_type=Boolean(optional=True), prefix="-both", doc=InputDocumentation(doc="boolean    [N] If set then both the forward and reverse\nstrands are searched"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jaspscan_V0_1_0().translate("wdl", allow_empty_container=True)

