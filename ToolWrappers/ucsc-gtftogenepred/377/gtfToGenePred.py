from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Gtftogenepred_V0_1_0 = CommandToolBuilder(tool="gtfToGenePred", base_command=["gtfToGenePred"], inputs=[ToolInput(tag="in_gene_pred_ext", input_type=Boolean(optional=True), prefix="-genePredExt", doc=InputDocumentation(doc="- create a extended genePred, including frame\ninformation and gene name")), ToolInput(tag="in_all_errors", input_type=Boolean(optional=True), prefix="-allErrors", doc=InputDocumentation(doc="- skip groups with errors rather than aborting.\nUseful for getting infomation about as many errors as possible.")), ToolInput(tag="in_ignore_groups_without_exons", input_type=Boolean(optional=True), prefix="-ignoreGroupsWithoutExons", doc=InputDocumentation(doc="- skip groups contain no exons rather than\ngenerate an error.")), ToolInput(tag="in_info_out", input_type=File(optional=True), prefix="-infoOut", doc=InputDocumentation(doc="- write a file with information on each transcript")), ToolInput(tag="in_source_prefix", input_type=String(optional=True), prefix="-sourcePrefix", doc=InputDocumentation(doc="- only process entries where the source name has the\nspecified prefix.  May be repeated.")), ToolInput(tag="in_implied_stop_after_cds", input_type=Boolean(optional=True), prefix="-impliedStopAfterCds", doc=InputDocumentation(doc="- implied stop codon in after CDS")), ToolInput(tag="in_simple", input_type=Boolean(optional=True), prefix="-simple", doc=InputDocumentation(doc="- just check column validity, not hierarchy, resulting genePred may be damaged")), ToolInput(tag="in_gene_name_as_name_two", input_type=Boolean(optional=True), prefix="-geneNameAsName2", doc=InputDocumentation(doc="- if specified, use gene_name for the name2 field\ninstead of gene_id.")), ToolInput(tag="in_include_version", input_type=Boolean(optional=True), prefix="-includeVersion", doc=InputDocumentation(doc="- it gene_version and/or transcript_version attributes exist, include the version\nin the corresponding identifiers.\n")), ToolInput(tag="in_gtf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtftogenepred_V0_1_0().translate("wdl", allow_empty_container=True)

