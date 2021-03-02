from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Rdp_Classifier_V0_1_0 = CommandToolBuilder(tool="rdp_classifier", base_command=["rdp_classifier"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="all tab delimited output format: [allrank|fixrank|db]. Default is allrank.\nallrank: outputs the results for all ranks applied for each sequence: seqname, orientation,\ntaxon name, rank, conf, ...\nfixrank: only outputs the results for fixed ranks in order: no rank, domain, phylum, class,\norder, family, genus\ndb: outputs the seqname, trainset_no, tax_id, conf. This is good for storing in a database")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputFile", doc=InputDocumentation(doc="output file name for classification assignment")), ToolInput(tag="in_query_file", input_type=File(optional=True), prefix="--queryFile", doc=InputDocumentation(doc="query file contains sequences in one of the following formats: Fasta, Genbank and EMBL")), ToolInput(tag="in_train_prop_file", input_type=File(optional=True), prefix="--train_propfile", doc=InputDocumentation(doc="a property file contains the mapping of the training files.\nNote: the training files and the property file should be in the same directory.\nThe default property file is set to data/classifier/rRNAClassifier.properties.\n")), ToolInput(tag="in_classifier_cmd", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file name for classification assignment"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rdp_Classifier_V0_1_0().translate("wdl", allow_empty_container=True)

