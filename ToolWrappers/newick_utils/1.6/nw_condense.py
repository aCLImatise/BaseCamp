from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Nw_Condense_V0_1_0 = CommandToolBuilder(tool="nw_condense", base_command=["nw_condense"], inputs=[ToolInput(tag="in_uses_group_map", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc=": uses a group map. This is a text file that lists one\nlabel and one group name per line. For example a file with the\nfollowing contents\nHomo Africa\nHylobates Asia\nGorilla Africa\nPan Africa\nPongo Asia\nmaps the generic names of some apes to their continent of origin.\nThat is, it defines the groups 'Asia' and 'Africa'. Labels and group\nnames are white-separated and should not contain spaces.\nClades consisting entirely of leaves belonging to a single group\nwill be replaced by a single leaf whose label has the following\nstructure: <group name>_<sample>_<size>, where <sample> is the label\nof one of the members of the clade, and <size> is the number of\nmembers of the clade.\nApplied to the Old world primates tree 'data/catarrhini', the above\nmap would condense all African apes into a single leaf (since they\nform a clade) with label 'Africa_Homo_3'. It would not be able to\ncondense further, however, because Pongo belong to group 'Asia'.")), ToolInput(tag="in_unicifies_leaf_labels", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc=": unicifies leaf labels by visiting the tree in Newick order and\nremoving any leaf node whose label was already seen."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Condense_V0_1_0().translate("wdl", allow_empty_container=True)

