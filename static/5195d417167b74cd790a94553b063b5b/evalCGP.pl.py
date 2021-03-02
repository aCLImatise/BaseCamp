from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Evalcgp_Pl_V0_1_0 = CommandToolBuilder(tool="evalCGP.pl", base_command=["evalCGP.pl"], inputs=[ToolInput(tag="in_eval_exec_dir", input_type=File(optional=True), prefix="--eval_exec_dir", doc=InputDocumentation(doc="Directory that contains the executable evaluate_gtf.pl from the eval package.\nIf not specified it must be in \$PATH environment variable.")), ToolInput(tag="in_join_genes", input_type=Int(optional=True), prefix="--joingenes", doc=InputDocumentation(doc="Use this option to merge genes in the prediction set and filter out duplicates (default: 0)")), ToolInput(tag="in_whole_genome", input_type=Int(optional=True), prefix="--wholeGenome", doc=InputDocumentation(doc="If this flag is set evaluation is on the whole genome. Per default, evaluation\nis restricted to the gene ranges")), ToolInput(tag="in_alternatives", input_type=Int(optional=True), prefix="--alternatives", doc=InputDocumentation(doc="Parameter of joingenes. If this flag is set, joingenes keeps alternative splice forms of a gene, otherwise\nit only keeps the best splicing form. Per definition, alternative splice forms are either transcripts\nwith the same gene ID or the same coding start AND end coordinates (default: 0).")), ToolInput(tag="in_no_selection", input_type=Int(optional=True), prefix="--noselection", doc=InputDocumentation(doc="Parameter of joingenes. If this flag is set, joingenes does NOT select a single best transcripts\namong multiple conflicting transcripts. Two transcripts are confliciting if they overlap\neach other and are no alternative splice forms.\nconsidered as conflicting.")), ToolInput(tag="in_no_join", input_type=Int(optional=True), prefix="--nojoin", doc=InputDocumentation(doc="Parameter of joingenes. If this flag is set, joingenes does NOT create new\ntranscripts by merging input transcripts, f.i. it does NOT combine two\nincomplete transcripts to a single complete transcript, where possible.\n")), ToolInput(tag="in_annotation_dot_gtf", input_type=String(), position=0, doc=InputDocumentation(doc="Annotation file in GTF format.")), ToolInput(tag="in_prediction_dot_gtf", input_type=String(), position=1, doc=InputDocumentation(doc="Prediction file in GTF format."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evalcgp_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

