from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nw_Reroot_V0_1_0 = CommandToolBuilder(tool="nw_reroot", base_command=["nw_reroot"], inputs=[ToolInput(tag="in_deroot_splice_lca", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": deroot - splice out the LCA of the ingroup, attaching its children\nto the root. The ingroup is the root's child which has the more\ndescendants. The root is expected to have two children. Other options\nhave no effect.")), ToolInput(tag="in_lax_it_is", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": lax - if it is not possible to reroot on the outgroup, try the\ningroup - that is, all nodes whose labels were NOT passed as\narguments.  This can also fail, if both the outgroup and the\ningroup have the tree's root as LCA. Note that to use this option\nyou must make sure that you pass ALL outgroup labels, otherwise the\ningroup will be wrong.")), ToolInput(tag="in_treat_inner_labels", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": treat inner node labels as bipartition support values. Although they\nare attributed to nodes in Newick, these are actually properties of\nedges, and are treated differently from clade labels, which are\nreally properties of nodes. The 'Rerooting' section of the manual\nhas more details."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Reroot_V0_1_0().translate("wdl", allow_empty_container=True)

