from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phast_V0_1_0 = CommandToolBuilder(tool="phast", base_command=["phast"], inputs=[ToolInput(tag="in_all_dists", input_type=String(), position=0, doc=InputDocumentation(doc="hmm_view        phastBias")), ToolInput(tag="in_base_evolve", input_type=String(), position=1, doc=InputDocumentation(doc="indelFit        phastCons")), ToolInput(tag="in_choose_lines", input_type=String(), position=2, doc=InputDocumentation(doc="indelHistory    phastMotif")), ToolInput(tag="in_clean_genes", input_type=String(), position=3, doc=InputDocumentation(doc="maf_parse       phastOdds")), ToolInput(tag="in_cons_entropy", input_type=String(), position=4, doc=InputDocumentation(doc="makeHKY         phyloBoot")), ToolInput(tag="in_convert_coords", input_type=String(), position=5, doc=InputDocumentation(doc="modFreqs        phyloFit")), ToolInput(tag="in_display_rate_matrix", input_type=String(), position=6, doc=InputDocumentation(doc="msa_diff        phyloP")), ToolInput(tag="in_d_less", input_type=String(), position=7, doc=InputDocumentation(doc="msa_split       prequel")), ToolInput(tag="in_d_lessp", input_type=String(), position=8, doc=InputDocumentation(doc="msa_view        refeature")), ToolInput(tag="in_draw_tree", input_type=String(), position=9, doc=InputDocumentation(doc="pbsDecode       stringiphy")), ToolInput(tag="in_eval_predictions", input_type=String(), position=10, doc=InputDocumentation(doc="pbsEncode       test")), ToolInput(tag="in_exon_i_phy", input_type=String(), position=11, doc=InputDocumentation(doc="pbsScoreMatrix  tree_doctor")), ToolInput(tag="in_hmm_train", input_type=String(), position=12, doc=InputDocumentation(doc="pbsTrain        treeGen")), ToolInput(tag="in_hmm_tweak", input_type=String(), position=13, doc=InputDocumentation(doc="phast"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phast_V0_1_0().translate("wdl", allow_empty_container=True)

