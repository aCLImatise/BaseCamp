from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Finderrors_V0_1_0 = CommandToolBuilder(tool="findErrors", base_command=["findErrors"], inputs=[ToolInput(tag="in_seqstore_path_sequence", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="seqStore           path to a sequence store")), ToolInput(tag="in_ovlstore_path_overlap", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="ovlStore           path to an overlap store")), ToolInput(tag="in_bgn_end_only", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="bgn end            only compute for reads bgn-end")), ToolInput(tag="in_outputname_write_corrections", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="output-name        write corrections to 'output-name'")), ToolInput(tag="in_errorrate_expected_rate", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="error-rate         expected error rate in alignments")), ToolInput(tag="in_minoverlap", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="min-overlap")), ToolInput(tag="in_numthreads", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="num-threads")), ToolInput(tag="in_degreethreshold_set_keep", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="degree-threshold   set keep flag if fewer than this many overlaps")), ToolInput(tag="in_kmersize_exactmatch_region", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="kmer-size          minimum exact-match region to prevent change")), ToolInput(tag="in_do_use_haploct", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="don't use the haplo_ct")), ToolInput(tag="in_votelen_number_vote", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="vote-len           number of exact match bases around an error to vote to change")), ToolInput(tag="in_endexcludelen_length_exclude", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="end-exclude-len    length of end of exact match to exclude in preventing change"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Finderrors_V0_1_0().translate("wdl", allow_empty_container=True)

